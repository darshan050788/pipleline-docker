FROM ubuntu
RUN apt update -y
RUN apt install nodejs -y
RUN apt install npm -y
RUN npm install -g http-server
WORKDIR /usr/local/webapps/hello-docker
ADD index.html /usr/local/webapps/hello-docker/index.html
CMD ["http-server","-s"]

