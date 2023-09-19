FROM python:3.10
WORKDIR /app
COPY "run.sh" .
ENTRYPOINT ["bash", "run.sh"]
