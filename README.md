# ghcr.io/susining/miniprogram-ci

## How to use in GitHub Actions

```yaml
name: Miniprogram CI

on:
  release:
    types:
      - released

env:
  APP_ID: {Your appid here}

jobs:
  job:
    name: CI/CD
    runs-on: [self-hosted, Linux, X64]
    container:
      image: ghcr.io/susining/miniprogram-ci:v1.0.0
      volumes:
        - /path/to/private/keys:/private-keys
    steps:
      - uses: actions/checkout@v3
      - run: npm install
      - run: npm run build
      - run: miniprogram-ci upload -v false --pp ./dist --pkp /private-keys/private-key.txt --enable-es6 true --enable-minify true --enable-autoprefixwxss true --uv $GITHUB_REF_NAME --ud $GITHUB_SHA --appid $APP_ID --qrcode-format terminal -r 1
```
