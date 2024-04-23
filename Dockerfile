FROM ubuntu:latest

WORKDIR ERDEM

COPY . ERDEM

RUN apt update -y

RUN apt install npm -y

RUN apt install python3-pip -y


CMD ["bash", "run.sh"]
