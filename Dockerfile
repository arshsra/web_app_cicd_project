FROM  nginx:latest
MAINTAINER arsh.sra01@gmail.com
RUN apt-get update && apt-get install -y nginx \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/apollo.zip /usr/share/nginx/html2
WORKDIR /usr/share/nginx/html2
RUN unzip apollo.zip
RUN cp -r html2/* /usr/share/nginx/html2
RUN rm -rf html2 apollo.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
