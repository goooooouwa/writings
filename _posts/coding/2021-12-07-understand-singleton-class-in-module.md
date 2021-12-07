---
published: true
title: Understand singleton class in module
category: coding
tags: ruby module singleton_class
---

Take a look at this code example from [Stack Overflow](https://stackoverflow.com/questions/30757126/why-the-module-classmethods-defined-and-extended-in-the-same-namespace):

```ruby
module MyModule
  class << self
    def included(base)
      base.extend ClassMethods
    end
  end
  
  # A normal instance method
  def multiple
    @x * @y
  end
  
  # A naming convention for methods that will be extended as class methods
  module ClassMethods
    def factory(x)
      new(x, 2 * x)
    end
  end
end
```

With a little experiment, you can see the singleton class of `MyModule` module is `#<Class:MyModule>`, which is an instance of class `Class`.

```ruby
module MyModule; end
MyModule.singleton_class # => #<Class:MyModule>
MyModule.singleton_class.class # => Class
```

In the first code example, `class << self` will give you the singleton class of `MyModule` module, which is  `#<Class:MyModule>`. Then it defines a `included` method for the singleton class, which then becomes a class method of `MyModule` module, which will be called whenever the module is included in aother class or module. This way of adding methods to the singleton class will make sure it doesn't effect any other class/module that's also inherited from the class `Class`.

