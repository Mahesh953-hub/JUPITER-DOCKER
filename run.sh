apt update -y
apt install git -y
apt install python3-pip -y
git clone https://github.com/jupyter/notebook.git
pip install -r notebook/requirements.txt
python notebook/notebookapp.py
