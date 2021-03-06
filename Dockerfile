FROM alpine:3.9

RUN wget https://github.com/npryce/adr-tools/archive/3.0.0.tar.gz \
    && tar -C / -xvf 3.0.0.tar.gz adr-tools-3.0.0/src \
    && rm 3.0.0.tar.gz \
    && apk add --no-cache bash

ENV PATH "$PATH:/adr-tools-3.0.0/src"
