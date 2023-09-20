FROM ubuntu:latest
WORKDIR /app
COPY "run.sh" /app 
ENTRYPOINT ["bash", "run.sh"]
