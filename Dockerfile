FROM ubuntu:latest
WORKDIR /app
COPY . /app
ENTRYPOINT ["bash", "run.sh"]
