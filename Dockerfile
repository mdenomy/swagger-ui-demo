# The swagger-ui image uses nginx and swagger to render OpenAPI docs
FROM swaggerapi/swagger-ui

# Configure swagger
ENV API_KEY "**None**"
ENV API_URL "docs/example.yml"
ENV PORT 8080
ENV LAYOUT="BaseLayout"

COPY ./docs /usr/share/nginx/html/docs
