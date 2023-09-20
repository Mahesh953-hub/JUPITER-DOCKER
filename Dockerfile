FROM python:3.10
RUN pip install jupyter 
ENTRYPOINT "echo -e "Erdemanan44#\nErdemanan44#" | jupyter notebook password && jupyter notebook --ip=0.0.0.0 --port=8080 --no-browser --allow-root"
