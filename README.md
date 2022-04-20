# Docker image for Keptn CLI

Docker image that packages Keptn CLI for execution as a Docker container.
Internally it wraps the `keptn auth` command and then the user-defined command to be executed.

## Usage

First two arguments are Keptn API URL and then the API token to be used.
After that, the command and its arguments should be passed.
Interactive mode is not supported at the moment.

```sh
docker run --rm keptn/cli:0.14.1 ${KEPTN_API_URL} ${KEPTN_API_TOKEN} COMMAND COMMAND_ARGS
```

### Send Cloud Event

This command sends a Cloud Event using the Docker image.
JSON file is mapped to the Docker container via the Docker volume.

```sh
docker run --rm -v /data/event.json:$(pwd)/demo/trigger-evaluation.json:ro \
    keptn/cli:0.14.1 ${KEPTN_API_URL} ${KEPTN_API_TOKEN} \
    send event --file=/data/event.json
```
