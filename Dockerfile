FROM ubuntu:latest
WORKDIR /app
COPY . /app
EXPOSE 8080
ENTRYPOINT ["bash", "run.sh"]
