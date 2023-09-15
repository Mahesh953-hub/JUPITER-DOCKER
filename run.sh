apt update
apt install python3-pip -y
apt install git -y

git clone https://github.com/ErdemBey31/kelimebot
cd kelimebot
pip install -r requirements.txt
pip install gunicorn flask
gunicorn app:app & python3 -m kelime_bot
