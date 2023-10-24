FROM ubuntu:latest
WORKDIR /erdem
COPY "run.sh" /erdem
RUN apt update
RUN apt install python3-pip -y
ENTRYPOINT ["bash", "run.sh"]
