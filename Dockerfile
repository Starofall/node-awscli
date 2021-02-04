FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy curl sudo python3-pip apt-transport-https build-essential  
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy nodejs 
RUN pip3 install awscli
RUN npm config set ignore-scripts true
RUN npm install -g npm@latest
RUN npm install -g @angular/cli@11.1.2
