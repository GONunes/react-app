FROM centos:latest
WORKDIR /app
RUN yum update -y
RUN yum install nodejs -y
RUN npx serve -y
COPY . .
ENV NODE_OPTS "-p"
ENTRYPOINT npx serve /app/build $NODE_OPTS 5000
