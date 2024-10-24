# Use an official Node.js image from Docker Hub
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 3000 to access the app
EXPOSE 3000

# Start the Node.js application
CMD ["node", "server.js"]
