FROM ubuntu:latest
WORKDIR /app
RUN apt-get update -y
RUN apt-get install nodejs -y && apt-get install npm -y
RUN npx serve -y
COPY . .
ENV NODE_OPTS "-p"
ENTRYPOINT npx serve /app/build $NODE_OPTS 5000
