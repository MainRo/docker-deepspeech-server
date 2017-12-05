FROM python:latest


RUN pip3 install --upgrade pip

RUN pip3 install \
        deepspeech \
        deepspeech-server

ENV arg_model /opt/deepspeech/model.pb
ENV arg_alphabet /opt/deepspeech/alphabet.txt

CMD ["sh", "-c", "/usr/local/bin/deepspeech-server --model ${arg_model} --alphabet ${arg_alphabet}"]
