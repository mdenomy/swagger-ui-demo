# swagger-ui-demo
Demo of running swagger ui for OpenAPI docs

Adapted from https://github.com/swagger-api/swagger-ui/blob/master/Dockerfile

## Layout and Swagger Configuration

Swagger UI has a confusing set of environment variables and options. Out of the box it displayes an explorer bar to load new OpenAPI specs and also loads a default example of a PetStore. Managed to find the right incantations of ENV variables and changes to index.html following these [instructions](https://github.com/swagger-api/swagger-ui/blob/212396f24d0d0f072d06c6af71087d6fddef9134/README.md#topbar-plugin)

Managed to get a set of env variables that show the most basic layout The Cleaned up the ENV variables associated with swagger
* Use the LAYOUT to BaseLayout
* Use API_URL as opposed to SWAGGER_JSON. Not having API URL caused the default petstore to show up

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
