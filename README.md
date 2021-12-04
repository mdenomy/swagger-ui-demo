# swagger-ui-demo
Demo of running swagger ui for OpenAPI docs

Adapted from https://github.com/swagger-api/swagger-ui/blob/master/Dockerfile

## Layout and Swagger Configuration

Swagger UI has a confusing set of environment variables and options. Out of the box it displays an explorer bar to load new OpenAPI specs and also loads a default example of a PetStore. Used these [instructions](https://github.com/swagger-api/swagger-ui/blob/212396f24d0d0f072d06c6af71087d6fddef9134/README.md#topbar-plugin) to find the right incantation of ENV variables and changes to index.html to display the base layout with the desired example docs loaded on start

* Set the LAYOUT environment variable to `BaseLayout`
* Set API_URL to `docs/example.yml` as opposed to setting SWAGGER_JSON (Not having API_URL caused the default petstore to show up)

## Usage

Build an image using the following command
```
docker build -t swagger-ui-demo .
```

Run the container
```
docker run -p 80:8080 swagger-ui-demo
```

Browse to http://localhost

## Sample Documentation

This uses a very simple [OpenAPI](https://swagger.io/specification/) sample specification found [here](https://swagger.io/docs/specification/basic-structure/)
