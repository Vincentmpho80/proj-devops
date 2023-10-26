# Use the official CentOS image as the base image
FROM centos:latest

# Replace the default CentOS mirror with a reliable one
RUN sed -i 's/enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf
RUN echo "mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=epel-7&arch=x86_64" > /etc/yum.repos.d/epel.repo

# Update the package repository and install necessary packages
RUN yum -y update
RUN yum -y install httpd

# Expose port 80 to allow incoming connections
EXPOSE 80

# Start the Apache web server
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

