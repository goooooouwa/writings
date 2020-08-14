---
---
# Active Record Callbacks — Ruby on Rails Guides

The whole callback chain is wrapped in a transaction. If any *before* callback method returns exactly false or raises an exception, the execution chain gets halted and a ROLLBACK is issued; *after* callbacks can only accomplish that by raising an exception.