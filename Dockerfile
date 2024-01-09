FROM  nginx:latest
MAINTAINER arsh.sra01@gmail.com
RUN apt-get update && apt-get install -y nginx \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/apollo.zip /usr/share/nginx/htmll
WORKDIR /usr/share/nginx/htmll
RUN unzip apollo.zip
RUN cp -r htmll/* /usr/share/nginx/htmll
RUN rm -rf htmll apollo.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
