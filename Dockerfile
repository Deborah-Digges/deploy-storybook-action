FROM alpine:3.10

RUN apk add --update nodejs nodejs-npm
RUN apk add git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]