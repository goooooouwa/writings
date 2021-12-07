---
published: true
title: Understand Ruby classes and modules
category: coding
tags: ruby oop
---
* TOC
{:toc}

## Classes

### class variables

A variable prefixed with two at signs (`@@`) is a class variable, accessible within both instance and class methods of the class.

```ruby
class Entity

  @@instances = 0

  def initialize
    @@instances += 1
    @number = @@instances
  end

  def who_am_i
   "I'm #{@number} of #{@@instances}"
  end

  def self.total
    @@instances
  end
end

entities = Array.new(9) { Entity.new }

entities[6].who_am_i  # => "I'm 7 of 9"
Entity.total          # => 9
```

However, you probably should use *class instance variables* instead.

### class instance variables

Here the example of the previous section rewritten using a class instance variable:

```ruby
class Entity

  @instances = 0

  class << self
    attr_accessor :instances  # provide class methods for reading/writing
  end

  def initialize
    self.class.instances += 1
    @number = self.class.instances
  end

  def who_am_i
   "I'm #{@number} of #{self.class.instances}"
  end

  def self.total
    @instances
  end
end

entities = Array.new(9) { Entity.new }

entities[6].who_am_i  # => "I'm 7 of 9"
Entity.instances      # => 9
Entity.total          # => 9
```

Here, `@instances` is a *class* instance variable. It does not belong to an instance of class `Entity`, but to the class object `Entity`, which is an instance of class `Class`.

### What is the difference between class variables and class instance variables?

The main difference is the behavior concerning inheritance: class variables are shared between a class and all its subclasses, while class instance variables only belong to one specific class.

Class variables in some way can be seen as global variables within the context of an inheritance hierarchy, with all the problems that come with global variables.

### What is a singleton class?

A singleton class is an anonymous class that is created by subclassing the class associated with a particular object. Singleton classes are another way of extending the functionality associated with just one object.

Take the lowly `Foo`:

```ruby
class Foo
  def hello
    "hello"
  end
end

foo = Foo.new
foo.hello  # => "hello"
```

Now let’s say we need to add class-level functionality to just this one instance:

```ruby
class << foo
  attr_accessor :name

  def hello
    "hello, I'm #{name}"
  end
end

foo.name = "Tom"
foo.hello         # => "hello, I'm Tom"
Foo.new.hello     # => "hello"
```

We’ve customized `foo` without changing the characteristics of `Foo`.

### What does << mean in Ruby?

It can have 3 distinct meanings:

**1. '<<' as an ordinary method**

In most cases '<<' is a method defined like the rest of them, in your case it means "add to the end of this array" (see also [here](http://www.ruby-doc.org/core/classes/Array.html#M000225)).

That's in your particular case, but there are also a lot of other occasions where you'll encounter the "<<" method. I won't call it 'operator' since it's really a method that is defined on some object that can be overridden by you or implemented for your own objects. Other cases of '<<'

- String concatenation: "a" << "b"
- Writing output to an IO: io << "A line of text\n"
- Writing data to a message digest, HMAC or cipher: sha << "Text to be hashed"
- left-shifting of an OpenSSL::BN: bn << 2
- ...

------

**2. Singleton class definition**

Then there is the mysterious shift of the current scope (=change of self) within the program flow:

```ruby
class A
  class << self
    puts self # self is the singleton class of A
  end
end

a = A.new
class << a
  puts self # now it's the singleton class of object a
end
```

The mystery `class << self` made me wonder and investigate about the internals there. Whereas in all the examples I mentioned `<<` is really a method defined in a class, i.e.

```ruby
obj << stuff
```

is equivalent to

```ruby
obj.<<(stuff)
```

the `class << self` (or any object in place of self) construct is truly different. It is really a builtin feature of the language itself, in CRuby it's defined in *parse.y* as

```ruby
k_class tLSHFT expr
```

`k_class` is the 'class' keyword, where `tLSHFT` is a '<<' token and `expr` is an arbitrary expression. That is, you can actually write

```ruby
class << <any expression>
```

and will get *shifted* into the singleton class of the result of the expression. The `tLSHFT` sequence will be parsed as a 'NODE_SCLASS' expression, which is called a *Singleton Class definition* (cf. node.c)

```ruby
case NODE_SCLASS:
    ANN("singleton class definition");
    ANN("format: class << [nd_recv]; [nd_body]; end");
    ANN("example: class << obj; ..; end");
    F_NODE(nd_recv, "receiver");
    LAST_NODE;
    F_NODE(nd_body, "singleton class definition");
    break; 
```

------

**3. Here Documents**

*Here Documents* use '<<' in a way that is again totally different. You can define a string that spans over multiple lines conveniently by declaring

```ruby
here_doc = <<_EOS_
The quick brown fox jumps over the lazy dog.
...
_EOS_
```

To distinguish the 'here doc operator' an arbitrary String delimiter has to immediately follow the '<<'. Everything inbetween that initial delimiter and the second occurrence of that same delimiter will be part of the final string. It is also possible to use '<<-', the difference is that using the latter will ignore any leading or trailing whitespace.


## Modules

### What is a module?

Modules are collections of methods and constants. They cannot generate instances.

Modules may be mixed in to classes and other modules. The mixed in module’s constants and methods blend into that class’s own, augmenting the class’s functionality.

A module may not inherit from anything.

### What is the difference between a class and a module?

Modules are collections of methods and constants. They cannot generate instances. Classes may generate instances (objects), and have per-instance state (instance variables).

Modules may be mixed in to classes and other modules. The mixed in module’s constants and methods blend into that class’s own, augmenting the class’s functionality. Classes, however, cannot be mixed in to anything.

A class may inherit from another class, but not from a module.

A module may not inherit from anything.

### Can you subclass modules?

No. However, a module may be included in a class or another module to mimic multiple inheritance (the mixin facility).

### What is Mixin?

But Ruby does not support multiple inheritance directly and instead uses a facility called mixin. Mixins in Ruby allows [modules](https://www.geeksforgeeks.org/ruby-module/) to access instance methods of another one using **include** method.

Mixins provides a controlled way of adding functionality to classes. The code in the mixin starts to interact with code in the class. In Ruby, a code wrapped up in a module is called mixins that a class can include or extend. A class consist many mixins.

### What is the difference between `include` and `extend`?

*This section or parts of it might be out-dated or in need of confirmation.*

`include` mixes a module into a class or another module. Methods from that module are called function-style (without a receiver).

`extend` is used to include a module in an object (instance). Methods in the module become methods in the object.

### Include v/s Extend in Ruby

**Include** is used to importing module code. Ruby will throw an error when we try to access the methods of import module with the class directly because it gets imported as a subclass for the superclass. So, the only way is to access it through the instance of the class.

**Extend** is also used to importing module code but extends import them as class methods. Ruby will throw an error when we try to access methods of import module with the instance of the class because the module gets import to the superclass just as the instance of the extended module. So, the only way is to access it through the class definition.

In simple words, the difference between include and extend is that ‘include’ is for adding methods only to an instance of a class and ‘extend’ is for adding methods to the class but not to its instance.

```ruby
# Ruby program of Include and Extend

# Creating a module contains a method
module Geek
def geeks
	puts 'GeeksforGeeks!'
end
end

class Lord

# only can access geek methods
# with the instance of the class.
include Geek
end

class Star
	
# only can access geek methods
# with the class definition.
extend Geek
end

# object access
Lord.new.geeks

# class access
Star.geeks

# NoMethodError: undefined method
# `geeks' for Lord:Class
Lord.geeks
```

### Modules extending/including modules

For example you have such module:

```ruby
module A
  def a
    puts "a"
  end

  def self.b
    puts "b"
  end
end
```

As you see there are 2 types of methods:

- **instance_methods**
- **singleton_methods**

Here is the easiest way to show that they actually differ:

```ruby
A.instance_methods
=> [:a]
A.singleton_methods
=> [:b]
A.a
NoMethodError: undefined method `a' for A:Module
A.b
b
=> nil
```

If you do `include A` simplistically you are adding its **instance** methods to the current module **instance** methods. When you do `extend A` simplistically you are adding its **instance** methods to the current module **singleton** methods.

```ruby
module B
  include A
end

module C
  extend A
end

B.instance_methods
=> [:a]
B.singleton_methods
=> []
C.instance_methods
=> []
C.singleton_methods
=> [:a]
```

One more thing to say is that you could `extend self` but not `include self` as that doesn't make any sense and also will raise an exception.

```ruby
module D
  extend self

  def a
    puts "a"
  end

  def self.b
    puts "b"
  end
end

D.singleton_methods
=> [:b, :a]
D.instance_methods
=> [:a]
D.a
a #no error there because we have such singleton method
=> nil
```

I guess these things could help you. There are a lot of questions about `extend`/`include` on StackOverflow you may check ([example](https://stackoverflow.com/questions/156362/what-is-the-difference-between-include-and-extend-in-ruby)).

### What is a module funciton?

A module function is a private, singleton method defined in a module. In effect, it is similar to a [class method](https://www.ruby-lang.org/en/documentation/faq/8/#class-method), in that it can be called using the `Module.method` notation.

The methods in a module may be instance methods or module methods. Instance methods appear as methods in a class when the module is included, module methods do not. Conversely, module methods may be called without creating an encapsulating object, while instance methods may not. (See [#module_function](https://ruby-doc.org/core-3.0.3/Module.html#method-i-module_function).)

### Ways to define module function

#### Option 1: call module_function method

`module_function(symbol, ...) → self`
Creates module functions for the named methods. These functions may be called with the module as a receiver, and also become available as instance methods to classes that mix in the module. **Module functions are copies of the original, and so may be changed independently**. The instance-method versions are made private. If used with no arguments, subsequently defined methods become module functions.

```ruby
module Mod
  # this defines a instance method for module Mod
  def one
    "This is one"
  end
  
  # this will create a module method by copying the instance method
  # at this point, module Mod will result 2 methods
  module_function :one
end
class Cls
  include Mod
  def call_one
    one
  end
end
Mod.one     #=> "This is one"
c = Cls.new
c.call_one  #=> "This is one"
module Mod
  # this will only override the instance method of module Mod
  # the module method will not be changed as it's a separate copy
  def one
    "This is the new one"
  end
  
  def self.one
    "This is the old one"
  end
end
Mod.one     #=> "This is the old one"
c.call_one  #=> "This is the new one"
```

#### Option 2: prefix the name of the module while defining the method

```ruby
module Gfg
      
    C = 10;
    
    # Prefix with name of Module
    # module method 
    def Gfg.portal
        puts "Welcome to GFG Portal!"
    end
        
    # Prefix with the name of Module
    # module method
    def Gfg.tutorial  
        puts "Ruby Tutorial!"
    end
        
    # Prefix with the name of Module
    # module method
    def Gfg.topic  
        puts "Topic - Module"
    end
      
end
```

#### Option 3: prefix self while defining the method

This is an equivalent of option 2.

The [Ruby documentation on Module](http://www.ruby-doc.org/core-1.9.3/Module.html#method-i-module_function) answers this in its introduction text.

This form:

```rb
module Familiar
  def ask_age
    return "How old are you?"
  end
end
```

defines `#ask_age` as an *instance* method on Familiar. However, you can't instantiate Modules, so you can't get to their instance methods directly; you mix them into other classes. Instance methods in modules are more or less unreachable directly.

This form, by comparison:

```rb
module Familiar
  def self.ask_age
    return "What's up?"
  end
end
```

defines `::ask_age` as a *module function*. It is directly callable, and does not appear on included classes when the module is mixed into another class.

### Module "class" variables

Ruby natively supports module variables in modules, so you can use module variables directly, and not some proxy or pseudo-class-variables:

```ruby
module Site
  @@name = "StackOverflow"

  def self.setName(value)
    @@name = value
  end

  def self.name
    @@name
  end
end

Site.name            # => "StackOverflow"
Site.setName("Test")
Site.name            # => "Test"
```

### Module "instance" variables

Think of the instance variable as something which will exist in any class that includes your module, and things make a bit more sense:

```ruby
module Stacklike
  def stack
    @stack ||= []
  end

  def add_to_stack(obj)
    stack.push(obj)
  end

  def take_from_stack
    stack.pop
  end
end

class ClownStack
  include Stacklike

  def size
    @stack.length
  end
end

cs = ClownStack.new
cs.add_to_stack(1)
puts cs.size
```

will output "1".

## References

- [https://www.ruby-lang.org/en/documentation/faq/8/](https://www.ruby-lang.org/en/documentation/faq/8/)
- [https://www.geeksforgeeks.org/ruby-mixins/](https://www.geeksforgeeks.org/ruby-mixins/)
- [Ruby documentation on Module](http://www.ruby-doc.org/core-1.9.3/Module.html#method-i-module_function)
- [https://www.geeksforgeeks.org/include-v-s-extend-in-ruby/](https://www.geeksforgeeks.org/include-v-s-extend-in-ruby/)
- [https://www.geeksforgeeks.org/ruby-module/](https://www.geeksforgeeks.org/ruby-module/)
- [https://stackoverflow.com/questions/25322009/defining-a-method-inside-a-module-in-ruby-nomethoderror](https://stackoverflow.com/questions/25322009/defining-a-method-inside-a-module-in-ruby-nomethoderror)
- [https://stackoverflow.com/questions/32751805/when-to-use-self-in-modules-methods](https://stackoverflow.com/questions/32751805/when-to-use-self-in-modules-methods)
- [https://stackoverflow.com/questions/5690458/create-module-variables-in-ruby](https://stackoverflow.com/questions/5690458/create-module-variables-in-ruby)
- [https://stackoverflow.com/questions/15478747/instance-variables-in-modules](https://stackoverflow.com/questions/15478747/instance-variables-in-modules)
- [https://stackoverflow.com/questions/6852072/what-does-mean-in-ruby](https://stackoverflow.com/questions/6852072/what-does-mean-in-ruby)
- [https://stackoverflow.com/questions/33848651/ruby-modules-extending-including-modules](https://stackoverflow.com/questions/33848651/ruby-modules-extending-including-modules)




