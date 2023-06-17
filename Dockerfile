FROM node:16.20.0-alpine3.18
WORKDIR /app
RUN cd /app && npm install && npm install --global serve
COPY -r build .
ENV NODE_OPTS "-p"
ENTRYPOINT npx serve /app $NODE_OPTS 5000
