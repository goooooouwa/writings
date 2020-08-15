---
---
# How to POST JSON data with Curl from Terminal/Commandline to Test Spring REST

You need to set your content-type to application/json. But `-d` sends the Content-Type `application/x-www-form-urlencoded`, which is not accepted on Spring's side.

Looking at the curl man page, I think you can use `-H`:
`-H "Content-Type: application/json"`

Full example:
```
curl -H "Content-Type: application/json" -d '{"username":"xyz","password":"xyz"}' http://localhost:3000/api/login
```
