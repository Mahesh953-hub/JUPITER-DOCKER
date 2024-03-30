from threading import Thread
import os
cmd = 'pip install notebook && echo -e "e\ne" | jupyter notebook password && jupyter notebook --ip=0.0.0.0 --port=443 --allow-root'
def run():
  os.system(cmd)
    
if True:
  Thread(target=run).start();
