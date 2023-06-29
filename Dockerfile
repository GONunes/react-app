FROM nginx:latest
WORKDIR /app
COPY build /var/www/html
EXPOSE 80
