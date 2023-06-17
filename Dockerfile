FROM node:16.20.0-alpine3.18
ENV NODE_OPTS "-p"
WORKDIR /app
RUN cd /app && npm install && npm install --global serve
COPY -r build /app
ENTRYPOINT npx serve /app $NODE_OPTS 5000
