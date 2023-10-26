# Use the official CentOS image as the base image
FROM centos:latest

# Update the package repository and install necessary packages
RUN yum -y update
RUN yum -y install httpd

# Fix the repository configuration to prevent the 'appstream' error
RUN echo "proxy=http://proxy.yourcompany.com:8080" >> /etc/yum.repos.d/CentOS-Base.repo

# Expose port 80 to allow incoming connections
EXPOSE 80

# Start the Apache web server
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

