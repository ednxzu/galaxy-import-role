# syntax=docker/dockerfile:1.2
FROM python:3.11

RUN pip3 install --upgrade pip

COPY entrypoint.sh /entrypoint.sh

RUN chmod 555 /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]