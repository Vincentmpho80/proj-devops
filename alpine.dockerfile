#!/bin/bash

# Define the Dockerfile content
DOCKERFILE_CONTENT="
# Use Node.js 18 (Alpine) as a base image
FROM node:18-alpine

# Set the working directory to /app
WORKDIR /app

# Run 'yarn install' with the '--production' flag to install only production dependencies
RUN yarn install --production

# Expose port 3030
EXPOSE 3030

# Define the command to run the Node.js application
CMD [\"node\", \"src/index.js\"]
"

# Create a Dockerfile with the defined content
echo "$DOCKERFILE_CONTENT" > Dockerfile

# Print the contents of the Dockerfile
cat Dockerfile

|--------------------------------------|

#Save the script to a file and make it executable. example:
chmod +x generate_dockerfile.sh

#Run the script, make sure you are in the directory where the script is saved
./generate_dockerfile.sh
