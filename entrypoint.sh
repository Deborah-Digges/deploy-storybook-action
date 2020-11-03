#!/bin/sh -l

cd $GITHUB_WORKSPACE

# Install the deployer
npm install --save-dev @storybook/storybook-deployer

# Install other dependencies
npm install


export GH_TOKEN=${1}
export BRANCH=${2}

# Deploy to GitHub Pages
npx storybook-to-ghpages --host-token-env-variable=GH_TOKEN --branch=$BRANCH --ci