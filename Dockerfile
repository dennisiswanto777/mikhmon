FROM php:7.4-cli-alpine
RUN apk update
RUN apk add git
WORKDIR mikhmon
RUN git clone https://github.com/dennisiswanto777/mikhmon mikhmon
ENTRYPOINT ["php"]
CMD ["-S", "0.0.0.0:80", "-t", "/mikhmon/src/"]
