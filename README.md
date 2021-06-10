# Colendaloupe README

## Production

Production Colenda uses a dockerized Cantaloupe making use of the `HttpResolver` to serve images from Ceph.

## Testing

This repo will allow you to play with Cantaloupe configurations with locally-hosted files. Using the instructions below,
you cna run Cantaloupe locally and serve the `puppy.jpg` test image using `FilesystemResolver`.

* Clone this repo.
* Run `cp cantaloupe.properties.example cantaloupe.properties`.
    * To modify behavior, see the [Cantaloupe v.3.3 Configuration Manual](https://medusa-project.github.io/cantaloupe/manual/3.3/configuration.html).
* Run `docker build -t colenda_cantaloupe:latest .` to build the image.
* Run `docker-compose up` to start the service.

Then:

[http://localhost:8182/iiif/2/puppy.jpg/info.json]()
[http://localhost:8182/iiif/2/puppy.jpg/full/full/0/default.jpg]()
