FROM python:3.9

WORKDIR ERDEM

COPY . ERDEM

RUN apt update -y

RUN apt install npm sudo -y

RUN wget https://www.python.org/ftp/python/3.10.9/Python-3.10.9.tgz

RUN tar -zxvf Python-3.10.9.tgz

RUN cd Python-3.10.9

RUN make

RUN sudomake install

RUN curl https://bootstrap.pypa.io/pip/get-pip.py > pip.py

RUN python3 pip.py

CMD ["bash", "run.sh"]
