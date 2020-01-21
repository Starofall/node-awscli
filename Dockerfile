FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy python-pip apt-transport-https nodejs build-essential
RUN pip install awscli
RUN npm install -g npm@latest
