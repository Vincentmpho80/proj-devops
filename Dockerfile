# Use the official Ubuntu 20.04 image as the base image
FROM ubuntu:20.04

# Update package list and install necessary packages
RUN apt-get update && apt-get install -y curl wget python3

# Create a directory to hold your application code
WORKDIR /app

# Copy your application code (e.g., a simple HTTP server script) into the container
COPY my-app.py /app/

# Expose port 8080 to allow incoming connections
EXPOSE 8080

# Set the command to run your application (e.g., a Python HTTP server)
CMD ["python3", "my-app.py"]

