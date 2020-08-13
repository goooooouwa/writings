# form processing

form syntax:
```
<form method="POST" action="/some/where/">
</form>
```

In rails, method="POST" sends form data to action **"****controller#create"** to process. if data is valid, save it and redirect to action "/some/where/", else render form with errors.