# Use an official Node.js slim runtime as the base image
FROM node:14-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy only package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies, --production flag to exclude dev dependencies
RUN npm install --production

# Copy your app source code inside the Docker image
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Define the command to run your app using CMD which defines the default command to run when the container starts
CMD ["node", "app.js"]
