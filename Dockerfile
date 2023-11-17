FROM jupyter/base-notebook:latest


# Jupyter Notebook'u çalıştırmak için
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=443", "--no-browser"]
