FROM node:18
WORKDIR /app
COPY build ./react-app
ENV NODE_OPTS "-p"
ENTRYPOINT npx serve ./react-app $NODE_OPTS 5000
