FROM ubuntu:latest
WORKDIR /app
RUN apt-get update -y && apt install snapd -y
RUN service snapd start && systemctl start snapd.service
RUN snap install node --classic --channel=18
COPY . .
ENV NODE_OPTS "-p"
ENTRYPOINT npx serve ./build $NODE_OPTS 5000
