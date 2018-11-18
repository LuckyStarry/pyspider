FROM ubuntu:16.04
RUN sed -i s/archive.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list
RUN sed -i s/security.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python python-dev python-distribute python-pip \
    libcurl4-openssl-dev libxml2-dev libxslt1-dev python-lxml \
    libssl-dev zlib1g-dev \
    python-mysqldb
RUN pip install pyspider
EXPOSE 5000
ENTRYPOINT [ "pyspider" ]