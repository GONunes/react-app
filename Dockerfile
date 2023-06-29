FROM nginx:latest
WORKDIR /app
COPY build /usr/share/nginx/html
EXPOSE 80
