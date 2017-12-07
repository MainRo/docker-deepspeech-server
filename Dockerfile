FROM python:latest


RUN pip3 install --upgrade pip

RUN pip3 install \
        deepspeech \
        deepspeech-server

ENV config /opt/deepspeech/config.json

CMD ["sh", "-c", "/usr/local/bin/deepspeech-server --config ${config}"]
