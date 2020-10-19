#!/bin/sh -l

npm install
npx storybook-to-ghpages --host-token-env-variable $1 --branch $2