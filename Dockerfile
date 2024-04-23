FROM python:3.9

WORKDIR ERDEM

COPY . ERDEM

RUN apt install npm -y

CMD ["bash", "run.sh"]
