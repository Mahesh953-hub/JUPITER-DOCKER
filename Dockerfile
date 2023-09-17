FROM ubuntu
WORKDIR /app
COPY "run.sh" .
ENTRYPOINT ["bash", "run.sh"]
