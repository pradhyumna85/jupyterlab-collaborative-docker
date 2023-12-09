FROM continuumio/miniconda3

RUN mkdir /opt/notebooks && apt update && apt install zip unzip tmux nano vim htop -y && conda config --append channels conda-forge

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt && conda clean --all

WORKDIR /opt/notebooks

## for jupyter notebook, fastapi, extras
EXPOSE 8888 8000 5000

ENV SHELL=/bin/bash

CMD [ "/bin/bash","-c","jupyter lab --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"]
