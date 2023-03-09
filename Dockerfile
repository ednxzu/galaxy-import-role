# syntax=docker/dockerfile:1.2
FROM python:alpine

RUN pip3 install --upgrade ansible-core

COPY entrypoint.sh /entrypoint.sh

RUN chmod 555 /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]