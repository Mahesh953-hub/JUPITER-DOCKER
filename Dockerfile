FROM python:3.9

WORKDIR ERDEM

COPY . .

RUN apt update -y

ENTRYPOINT ["bash", "run.sh"]
