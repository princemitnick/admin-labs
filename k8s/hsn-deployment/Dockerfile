FROM bitnami/tomcat:8.5
USER root
RUN mkdir -p /home/emr
COPY .hsn.mail.properties /home/emr/
ADD hsn.war /bitnami/tomcat/webapps/ 
EXPOSE 8080
