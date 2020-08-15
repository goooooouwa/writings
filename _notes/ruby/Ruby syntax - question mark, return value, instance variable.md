---
---
# Ruby syntax: "?" question mark, return value, "@" instance variable

## "?" question mark

```
>> "foobar".empty?
=> false
>> "".empty?
=> true
```
Note the question mark at the end of the empty? method. This is a Ruby convention indicating that the return value is boolean: true or false. 

## return value

```
>> def string_message(string)
>>   if string.empty?
>>     "It's an empty string!"
>>   else
>>     "The string is nonempty."
>>   end
>> end
=> nil
>> puts string_message("")
It's an empty string!
>> puts string_message("foobar")
The string is nonempty.
```

Note that Ruby functions have an implicit return, meaning they return the last statement evaluated—in this case, one of the two message strings, depending on whether the method’s argumentstring is empty or not. Ruby also has an explicit return option; the following function is equivalent to the one above:
```
>> def string_message(string)
>>   return "It's an empty string!" if string.empty?
>>   return "The string is nonempty."
>> end
```

## "@" instance variable
In Rails, the principal importance of instance variables is that they are automatically available in the views, but in general they are used for variables that need to be available throughout a Ruby class. 