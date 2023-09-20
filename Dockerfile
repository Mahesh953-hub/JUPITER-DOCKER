FROM python:3.10
WORKDIR /app
COPY "run.sh" /app
RUN pip install jupyter 
ENTRYPOINT ["bash", "run.sh"]
