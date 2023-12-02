FROM ubuntu:latest

WORKDIR ERDEM

COPY run.sh .

RUN apt update -y

RUN apt install npm -y

RUN apt install python3-pip -y


CMD ["bash", "run.sh"]
