# deploy-storybook-action

In any site that uses storybook with npm as a package manager, add a workflow file called `<name>.yaml` in `.github/worflows` which looks like this:

```
name: Deploy to GitHub Pages

on:
  push:
    branches:
      master

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Install dependencies
        run: npm install
      - name: Deploy storybook to Github Pages
        uses: deborah-digges/deploy-storybook-action@v14.0
        with:
          access-token: ${{ github.actor }}:${{ secrets.GITHUB_TOKEN }}
```


# TODO
1. Add yarn as a package manager
2. Deploy to S3 bucket
