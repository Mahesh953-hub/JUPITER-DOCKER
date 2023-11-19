FROM python3:latest

WORKDIR ERDEM

COPY run.sh /ERDEM

RUN apt update -y

RUN apt install python3-pip -y

RUN apt install npm -y

CMD ["bash", "run.sh"]
