# WP-CLI in Docker

WP-CLI is a command line application for WordPress administration.
WP-CLI commands manual is here: http://wp-cli.org/commands/

## Build

Clone this repo and do:

```docker build -t wpcli . ```

## Use

```docker run -v $(pwd)/:/wpcli -it wpcli <WP-CLI command> --allow-root```
