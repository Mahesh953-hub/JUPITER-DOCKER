FROM ubuntu
COPY "run.sh" .
ENTRYPOINT ["bash", "run.sh" ]
