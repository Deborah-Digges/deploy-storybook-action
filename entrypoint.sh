#!/bin/sh -l

npm install
storybook-to-ghpages --host-token-env-variable $1 --branch $2