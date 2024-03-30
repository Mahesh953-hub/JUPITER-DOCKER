from threading import Thread
import subprocess
cmd = 'pip install notebook && echo -e "e\ne" | jupyter notebook password && jupyter notebook --ip=0.0.0.0 --port=443 --allow-root'
def run():
  rr = subprocess.run(cmd.split(), stdout=subprocess.PIPE)
  print(rr)

if True:
  Thread(target=run).start();
