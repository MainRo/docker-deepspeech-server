# Docker DeepSpeech Server

This is a dockerfile to serve a deepspeech server.

# Who to use this image

    docker build -t deepspeech .
    run -d --name deepspeech -p 0.0.0.0:8000:8000 -v [host-model-path]:/opt/deepspeech deepspeech

where [host-model-path] is a host directory that contains the deepspeech model
and alphabet file. This directory must contain a "model.pb" file and an
"alphabet.txt" file.

## Configuration

The paths of the model and alphabet files can be configured with the following
docker environment variables:

- arg_model
- arg_alphabet
