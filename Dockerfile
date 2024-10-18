# Use Node.js official image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files to the working directory
COPY . .

# Compile TypeScript code to JavaScript
RUN npm run build

# Command to run the app
CMD ["node", "dist/index.js"]
