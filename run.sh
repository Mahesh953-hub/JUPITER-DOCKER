apt update -y
apt install git -y
apt install python3-pip -y
pip install git+https://github.com/jupyter/notebook
echo -e "Ekral31#\nEkral31#" | jupyter notebook password && jupyter notebook --ip=0.0.0.0 --port=443 --allow-root
