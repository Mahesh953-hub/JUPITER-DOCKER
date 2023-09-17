apt update
apt install python3-pip -y 
pip install jupyter 
jupyter notebook --ip 0.0.0.0 --port 443 --allow-root  --no-browser
