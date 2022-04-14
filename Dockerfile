
FROM ubuntu:latest

RUN apt-get -y update && apt-get install -y \
    wget \
    sudo \ 
    vim

WORKDIR /opt
RUN wget https://repo.continuum.io/archive/Anaconda3-2020.02-Linux-x86_64.sh && \
sh /opt/Anaconda3-2020.02-Linux-x86_64.sh -b -p /opt/anaconda3

ENV PATH /opt/anaconda3/bin:$PATH

# ライブラリのインストール
RUN pip install --upgrade pip
RUN conda update -n base -c defaults conda
RUN conda install -c conda-forge fbprophet==0.6

WORKDIR /

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token='hayashi'"]