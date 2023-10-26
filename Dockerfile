# Use the official CentOS image as the base image
FROM centos:latest

# Update the package repository and install necessary packages
RUN yum -y update && yum -y install httpd

# Expose port 80 to allow incoming connections
EXPOSE 80

# Start the Apache web server
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

