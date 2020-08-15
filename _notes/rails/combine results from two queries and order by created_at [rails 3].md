---
---
# combine results from two queries and order by created_at? [rails 3]

I believe it should be as simple as:

`combined_sorted = (User.comments + User.likes).sort{|a,b| a.created_at <=> b.created_at }`