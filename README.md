# WP CLI in Docker

## Build

Clone this repo and do:

```docker build -t wpcli . ```

## Use

```docker run -v $(pwd)/:/wpcli -it wpcli <WP-CLI command> --allow-root```
