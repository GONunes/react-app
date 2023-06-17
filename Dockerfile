FROM ubuntu:latest
WORKDIR /app
RUN apt-get update -y
RUN apt-get install wget -y
RUN wget https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | source ~/.bashrc
RUN nvm install v18 && nvm install node
RUN npm install --global serve -y
COPY . .
ENV NODE_OPTS "-p"
ENTRYPOINT npx serve /app/build $NODE_OPTS 5000
