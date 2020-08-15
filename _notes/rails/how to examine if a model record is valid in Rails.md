---
category: rails
---
# how to examine if a model record is valid in Rails

```
$ rails c
Loading development environment (Rails 3.2.13)

irb(main):001:0> e = Event.create title:"title"
=> #<Event _id: 525ba3053108599f8e000001, created_at: nil, updated_at: nil, title: "title", duration: nil, category: nil, description: nil, start_time: nil, end_time: nil, date: 2013-10-14 00:00:00 UTC, tags: [], coordinate: [0, 0], stars: 0, locale: "en", state: 0, user_id: nil>
irb(main):002:0> e.valid?
=> false

irb(main):003:0> e.errors
=> #<ActiveModel::Errors:0x007f985f5753b0 @base=#<Event _id: 525ba3053108599f8e000001, created_at: nil, updated_at: nil, title: "title", duration: nil, category: nil, description: nil, start_time: nil, end_time: nil, date: 2013-10-14 00:00:00 UTC, tags: [], coordinate: [0, 0], stars: 0, locale: "en", state: 0, user_id: nil>, @messages={:duration=>["is not a number"]}>

irb(main):004:0> e = Event.create title:"title", duration: 1
=> #<Event _id: 525ba31b3108599f8e000002, created_at: 2013-10-14 07:54:03 UTC, updated_at: 2013-10-14 07:54:03 UTC, title: "title", duration: 1, category: nil, description: nil, start_time: nil, end_time: nil, date: 2013-10-14 00:00:00 UTC, tags: [], coordinate: [0, 0], stars: 0, locale: "en", state: 0, user_id: nil>

irb(main):005:0> e.valid?
=> true
```
