# Use the official Node.js image as the base image
FROM node:14
# Set the working directory inside the container
WORKDIR /app
# Copy the entire lab1-base directory to the working directory
COPY assigment-1-base/ .
# Install the dependencies
RUN npm install
# Build the application
RUN npm ci
# Run the tests
CMD ["npm", "test"]