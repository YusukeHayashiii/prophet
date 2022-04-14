# ubuntuのイメージを使用
FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y tzdata && \
    apt-get install -y curl wget git ssh vim

# Pythonのパッケージインストール
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN mkdir /data
COPY requirements.txt /data
RUN pip3 install -r /data/requirements.txt

# notebookのエイリアス
RUN touch ~/.bashrc
RUN echo 'alias jup="jupyter notebook"' >> ~/.bashrc