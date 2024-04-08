FROM centos:latest
RUN yum -y update
RUN yum -y install httpd
RUN curl www.google.com > /var/www/html/index.html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

