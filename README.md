## Colendaloupe README

This is a Dockerized instance of Cantaloupe v.3.3 for use with HttpResolver lookup for image resolution.

### Deployment

* Clone this repo.
* Run `cp cantaloupe.properties.example cantaloupe.properties`.  Unmodified, this will deploy a Cantaloupe instance that uses `FilesystemResolver` and looks at `/images_path/` for images, but is otherwise a stock configuration.
    * To modify behavior, see the [Cantaloupe v.3.3 Configuration Manual](https://medusa-project.github.io/cantaloupe/manual/3.3/configuration.html).
    
* Run `docker build -t colenda_cantaloupe:latest .` to build the image.
* Run `docker-compose up` to spin up a container.