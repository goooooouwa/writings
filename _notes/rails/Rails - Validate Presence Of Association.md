---
category: rails
---
# Rails - Validate Presence Of Association

You can use `validates_presence_of` http://apidock.com/rails/ActiveModel/Validations/ClassMethods/validates_presence_of
```
class A < AR::Base
  has_many :bs
  validates_presence_of :bs
end
```
or just `validates` http://apidock.com/rails/ActiveModel/Validations/ClassMethods/validates

```
class A < AR::Base
  has_many :bs
  validates :bs, :presence => true
end
```

But there is a bug with it if you will use `accepts_nested_attributes_for` with `:allow_destroy => true`: [Nested models and parent validation](http://stackoverflow.com/questions/5144527/nested-models-and-parent-validation). In this topic you can find solution.
