---
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