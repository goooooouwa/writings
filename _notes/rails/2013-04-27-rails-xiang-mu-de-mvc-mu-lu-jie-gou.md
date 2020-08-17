---
date: 2013-04-27
title: Rails项目的MVC目录结构
category: rails
---
# Rails项目的MVC目录结构

object:
**Model**
`app/models/object.rb`

**Views**

```
app/views/objects/index.html.erb
              /show
              /...
```
**Controller**

```
app/controllers/objects_controller.rb
   actions
   index
   show
   ...
```
**Routes**

`config/routes.rb`

map URI ---> controller#action
resource object ---> index, show, ...
