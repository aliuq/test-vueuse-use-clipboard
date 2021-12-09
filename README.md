# Nuxt 3 Minimal Starter

```bash
# Install dependencies
yarn install
# Build
yarn build
# Build docker image
docker build -t test-use-clipboard .
# Run
docker run --rm -p 3009:3000 --env HOST=0.0.0.0 test-use-clipboard
# Delete docker image
docker rmi test-use-clipboard
```
