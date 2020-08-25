FROM tensorflow/tensorflow:1.15.2-py3

RUN pip3 install --upgrade pip

COPY requirements.txt /tmp
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

ENTRYPOINT deepspeech-server --config /opt/deepspeech/config.json
