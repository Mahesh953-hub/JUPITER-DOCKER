FROM perl:latest

WORKDIR ERDEM

COPY run.sh /ERDEM

RUN apt update -y

RUN apt install python3-pip -y


CMD ["bash", "run.sh"]
