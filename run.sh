apt update
apt install python3-pip -y
pip install jupyter
echo -e "Erdemanan44#\nErdemanan44#" | jupyter notebook password && jupyter notebook --ip=0.0.0.0 --port=8080 --no-browser --allow-root
