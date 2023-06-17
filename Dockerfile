FROM ubuntu:latest
WORKDIR /app
RUN apt-get update -y
RUN apt install curl
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | -E bash -
RUN apt-get install nodejs -y
RUN npm install --global serve -y
COPY . .
ENV NODE_OPTS "-p"
ENTRYPOINT npx serve /app/build $NODE_OPTS 5000
