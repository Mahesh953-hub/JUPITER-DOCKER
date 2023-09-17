FROM ubuntu
COPY "run.sh" .
WORKDIR /app
ENTRYPOINT ["bash", "run.sh"]
