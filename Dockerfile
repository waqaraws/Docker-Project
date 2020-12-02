FROM centos:latest
RUN yum install -y httpd \
zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/niture.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip niture.zip
RUN cp -rvh niture/* .
RUN rm -rf niture niture.zip
CMD ["usr/sbin/httpd/", "-D", "FOREGROUND"]
EXPOSE 80
