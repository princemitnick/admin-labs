FROM nginx:latest 
COPY ./index.html /usr/share/nginx/html 
RUN apt-get update 
RUN apt-get -y install iputils-ping 
EXPOSE 80

FROM debian:latest
RUN apt-get update 
RUN apt-get -y install nginx iputils-ping 
RUN apt-get autoremove
COPY ./index.html /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80