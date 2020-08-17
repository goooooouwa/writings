---
category: rails
---
# file uploads

**Essential**

A. form
```
<form action="upload_file.php" method="post" enctype="multipart/form-data">
<label for="file">Filename:</label>
<input type="file" name="file" id="file"><br>
<input type="submit" name="submit" value="Submit">
</form>
```

B. action

`uploaded_file = params[:file]  # access the posted file`

**Approaches**

1. direct upload( client -> store)
2. pass-through uploads( client -> server -> store)

**Stores**

- local filesystem( doesn't work)
- self hosted storage server( with maintenance cost)
- Amazon S3
- Rackspace Cloud Files
- Google Storage

**Where file uploads gem( e.g. CarrierWave) comes in**

To assist you handling the uploaded file, including:

- white-list and sanitize the file uploads
- storing and retrieving the files
- save reference of file in database model
- manipulating files

**References**

- [File Upload - w3schools](http://www.w3schools.com/php/php_file_upload.asp)
- [Using AWS S3 to Store Static Assets and File Uploads - Heroku doc](https://devcenter.heroku.com/articles/s3#file-uploads)

- [Uploading Files - Rails guide](http://guides.rubyonrails.org/form_helpers.html#uploading-files)

- [CarrierWave Github repo](https://github.com/carrierwaveuploader/carrierwave)
