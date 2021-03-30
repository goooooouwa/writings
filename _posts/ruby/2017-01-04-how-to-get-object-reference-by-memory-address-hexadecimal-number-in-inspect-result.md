---
date: 2017-01-04
title: How to get object reference by memory address (hexadecimal number in inspect result)
category: ruby
---
# How to get object reference by memory address (hexadecimal number in inspect result)



1. calculate object_id from memory address
object_id returns half the object's memory address, so you need to multiply by 2 to get the actual address. (Vice versa, divide memory address by 2 to get object_id)

2. get reference of object by object_id
`obj = ObjectSpace._id2ref(object_id)`

3. inspect referenced object
`obj.inspect`

### References:
Object address in Ruby http://stackoverflow.com/questions/4010547/object-address-in-ruby
Can I or SHOULD I find an object by the object_id attribute in ruby? http://stackoverflow.com/questions/8264732/can-i-or-should-i-find-an-object-by-the-object-id-attribute-in-ruby
