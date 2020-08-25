# Docker DeepSpeech Server

This is a dockerfile to serve a [deepspeech server](https://github.com/MainRo/deepspeech-server).

# How to use this image

    docker run -dt --name deepspeech -p 0.0.0.0:8080:8080 -v [host-model-path]:/opt/deepspeech romainsah/deepspeech-server:latest

where [host-model-path] is a host directory that contains the deepspeech server
configuration file, the model file, and the scorer file.

## Running on GPU

    docker run -dt --gpus all --name deepspeech -p 0.0.0.0:8080:8080 -v [host-model-path]:/opt/deepspeech romainsah/deepspeech-server:latest-gpu

