# swagger-ui-demo
Demo of running swagger ui for OpenAPI docs

Adapted from https://github.com/swagger-api/swagger-ui/blob/master/Dockerfile

## Layout and Swagger Configuration

* Set the LAYOUT environment variable to `BaseLayout`. This removes the Explore bar to change the spec
* Set API_URL to `docs/example.yml` as opposed to setting SWAGGER_JSON (Not having API_URL seemd to cause the default petstore to show up)

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

Remember to clear the browser cache in between making changes to the docker setup.
