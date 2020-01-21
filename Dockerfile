FROM node:12
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy python-pip apt-transport-https
RUN pip install awscli
