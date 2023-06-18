FROM ubuntu:latest
WORKDIR /app
RUN apt-get update -y && apt install snapd -y
RUN snap install node --classic
COPY . .
ENV NODE_OPTS "-p"
ENTRYPOINT npx serve ./build $NODE_OPTS 5000
