FROM python:3.10
COPY "run.sh" .
ENTRYPOINT ["bash", "run.sh" ]
