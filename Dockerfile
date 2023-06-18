FROM ubuntu:latest
WORKDIR /app
RUN apt-get update -y
RUN apt-get install nodejs -y && apt-get install npm -y
COPY . .
ENV NODE_OPTS "--port"
ENTRYPOINT npm start /app/build $NODE_OPTS 5000
