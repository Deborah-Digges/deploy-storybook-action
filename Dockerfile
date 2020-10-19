# Container image that runs your code
FROM alpine:3.10

RUN apk add --update nodejs nodejs-npm

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY .npmrc /.npmrc
COPY package.json /package.json
COPY package-lock.json /package-lock.json
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]