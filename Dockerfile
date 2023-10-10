FROM ubuntu:latest
COPY "run.sh" .
ENTRYPOINT ["bash", "run.sh"]
