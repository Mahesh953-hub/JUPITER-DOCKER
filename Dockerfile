FROM ubuntu:latest
COPY "run.sh" .
RUN apt update
RUN apt install python3-pip -y
ENTRYPOINT ["bash", "run.sh"]
