---
title: work with ActiveRecord associations in Elasticsearch
layout: post
category: coding
tags: elasticsearch, rails
---

if model A has one or many model B( equals model B belongs to model A), to update index of A when B gets updated, just write in B:

`belongs_to A, touch: true`

if model A belongs to model B( equals model B has one or many model A), to update index of A when B gets updated, just write in B:

```ruby
has_many :As
after_update { self.As.each(&:touch) }
```

if model A has and belongs to many model B, to update index of A when one of Bs gets updated, just write in A:

```ruby
has_and_belongs_to_many :Bs, after_add: [ lambda { |a,c| a.__elasticsearch__.index_document } ],
 after_remove: [ lambda { |a,c| a.__elasticsearch__.index_document } ]
and in B
after_update { self.As.each(&:touch) }
```
