FROM python:3.9

WORKDIR ERDEM

COPY . ERDEM

RUN apt update -y

RUN apt install npm -y

RUN wget https://www.python.org/ftp/python/3.10.9/Python-3.10.9.tgz

RUN tar -zxvf Python-3.10.9.tgz

CMD ["bash", "run.sh"]
