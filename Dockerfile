FROM python:3.9

WORKDIR ERDEM

COPY . .

RUN apt update -y

RUN apt install npm -y

RUN apt install python3-pip -y


CMD ["bash", "runbe.py"]
