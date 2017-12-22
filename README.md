# Docker DeepSpeech Server

This is a dockerfile to serve a [deepspeech server](https://github.com/MainRo/deepspeech-server).

# How to use this image

    docker build -t deepspeech .
    run -dt --name deepspeech -p 0.0.0.0:8000:8000 -v [host-model-path]:/opt/deepspeech deepspeech

where [host-model-path] is a host directory that contains the deepspeech server
configuration file.

## Configuration

The location of the configuration file can be changed with the "config" docker
environment variables.
