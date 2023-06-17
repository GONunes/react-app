FROM node:16.20.0-alpine3.18
WORKDIR /app
RUN npm install --global serve -y
COPY . .
ENV NODE_OPTS "-p"
ENTRYPOINT npx serve /app/build $NODE_OPTS 5000
