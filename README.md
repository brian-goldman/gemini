## Prerequisites

* [OrbStack](https://orbstack.dev)

## Build the image

```
./build
```

## Specify an API key

Create a file in this directory called `env`, which defines the API key environment variable:

```
GEMINI_API_KEY=blarblarblar
```

## Set up a volume to share code with the host machine

```
orb start
docker volume create gemini
```

The volume will be at `/opt/gemini` in the container and `~/OrbStack/docker/volumes/gemini` outside.

## Run a container

```
./run science
```
