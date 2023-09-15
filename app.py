from http.server import SimpleHTTPRequestHandler
from socketserver import TCPServer
import subprocess
PORT = 8080

class MyHandler(SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        self.wfile.write(b'Merhaba, dunya!')
        try:
          subprocess.run("python3 main.py", shell=True).decode('utf-8')
        except:
          print("Zaten aktif")
httpd = TCPServer(("", PORT), MyHandler)
print("Web sunucusu çalışıyor...")
httpd.serve_forever()