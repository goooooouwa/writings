---
---
Defining Abilities with Blocks

So this basically means, if you wanna use accessible_by method, you need to supply an SQL string which represents the same condition you specified in the condition block.

A block's conditions are only executable through Ruby. If you are Fetching Records using  accessible_by  it will raise an exception. To fetch records from the database you *need to supply an SQL string representing the condition*. The SQL will go in the  WHERE  clause, if you need to do joins consider using sub-queries or scopes (below).

