FROM ubuntu:latest
WORKDIR /app
COPY "run.sh" /app
RUN apt install python3-pip -y
RUN pip install jupyter 
ENTRYPOINT ["bash", "run.sh"]
