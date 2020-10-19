#!/bin/sh -l

npm install
npm run deploy-storybook --host-token-env-variable $1 --branch $2