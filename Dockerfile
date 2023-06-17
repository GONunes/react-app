FROM ubuntu:latest
WORKDIR /app
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nodejs -y
RUN npm install --global serve -y
COPY . .
ENV NODE_OPTS "-p"
ENTRYPOINT npx serve /app/build $NODE_OPTS 5000
