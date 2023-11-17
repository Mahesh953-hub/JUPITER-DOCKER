FROM jupyter/base-notebook:latest


# Jupyter Notebook'u çalıştırmak için
CMD ["echo", "-e", "'Ekral31#\nEkral31#'", "|", ",jupyter", "notebook", "password", "jupyter", "notebook", "--ip=0.0.0.0", "--port=443", "--no-browser"]
