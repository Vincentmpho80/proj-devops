# Use the official NGINX image
FROM nginx:latest

# Copy custom configuration files (if needed)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose ports (if needed)
 EXPOSE 8080

# Command to start NGINX (default behavior of the nginx image)
CMD ["nginx", "-g", "daemon off;"]

