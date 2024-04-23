FROM python:3.9

WORKDIR ERDEM

COPY . ERDEM

RUN apt update -y

ENTRYPOINT ["bash", "run.sh"]
