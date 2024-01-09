FROM  nginx:latest
MAINTAINER arsh.sra01@gmail.com
RUN apt-get update && apt-get install -y nginx \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/hexashop.zip /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN unzip hexashop.zip
RUN cp -r html/* /usr/share/nginx/html
RUN rm -rf html hexashop.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
