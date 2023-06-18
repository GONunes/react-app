FROM ubuntu:latest
WORKDIR /app
RUN apt-get update -y && apt install snapd -y
RUN snap install node --classic --channel=18
COPY . .
ENV NODE_OPTS "-p"
ENTRYPOINT npx serve ./build $NODE_OPTS 5000
