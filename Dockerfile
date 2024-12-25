FROM php:7.4-cli-alpine
RUN apk update
RUN apk add git
WORKDIR src
COPY . .
ENTRYPOINT ["php"]
CMD ["-S", "0.0.0.0:80", "-t", "/src/src/"]
