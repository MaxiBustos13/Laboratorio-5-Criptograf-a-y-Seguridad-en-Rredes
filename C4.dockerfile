FROM ubuntu:20.10

RUN sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu/http:\/\/old-releases.ubuntu.com\/ubuntu/g' /etc/apt/sources.list

RUN sed -i '/^deb.*security.ubuntu.com/s/^/#/' /etc/apt/sources.list

RUN apt update && apt install -y sudo net-tools openssh-client openssh-server

RUN apt install -y tshark

EXPOSE 22