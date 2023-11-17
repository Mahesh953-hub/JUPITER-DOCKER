FROM jupyter/base-notebook:latest

# İstenilen Jupyter sürümünü kurmak için
RUN pip install jupyter==7.0.0

# Jupyter Notebook'u çalıştırmak için
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=443", "--no-browser"]
