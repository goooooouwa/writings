---
date: 2013-04-28
title: Why Associations
category: rails
---
### Why Associations?

Why do we need associations between models? Because they make common operations simpler and easier in your code.

**example:**

without association:

`@order = Order.create(:order_date => Time.now, :customer_id => @customer.id)`

with association:

`@order= @customer.orders.create(:order_date=> Time.now)`
