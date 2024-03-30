from threading import Thread
import os
cmd = 'bash ruh.sh'
def run():
  os.system(cmd)
    
if True:
  Thread(target=run).start();
