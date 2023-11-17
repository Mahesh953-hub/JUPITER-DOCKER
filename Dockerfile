FROM ubuntu:latest

WORKDIR ERDEM

COPY run.sh /ERDEM

CMD ["bash", "run.sh"]
