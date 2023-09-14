FROM python:latest

# Gerekli paketleri kurmak için kullanılır

RUN pip install jupyter
RUN echo -e "Erdemanan31#\nErdemanan31#" | jupyter notebook password
# Çalışma dizini oluşturulur
WORKDIR /app

# Docker içinde Jupyter Not defterini başlatmak için kullanılır
CMD jupyter notebook --ip 0.0.0.0 --port 8080 --allow-root --no-browser
