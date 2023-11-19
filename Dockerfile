FROM python:3.10

WORKDIR ERDEM

COPY run.sh /ERDEM

RUN apt update -y

RUN apt install python3-pip -y


CMD ["bash", "run.sh"]
