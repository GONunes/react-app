FROM node:16.20.0-alpine3.18
ENV NODE_ENV=production
WORKDIR /app
RUN npm install --production
COPY -r build /app
ENTRYPOINT npm start /app
