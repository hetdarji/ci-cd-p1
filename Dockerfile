# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install dependencies from package.json
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port your app will run on (typically 3000 for Node.js apps)
EXPOSE 3000

# Define the command to run your app (e.g., start the server)
CMD [ "npm", "start" ]
