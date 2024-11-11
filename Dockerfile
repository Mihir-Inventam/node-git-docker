# Use the official Node.js 20 image as a base
FROM node:20

# Create and set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 3112
EXPOSE 3112

# Define the command to run the application
CMD ["npm", "start"]
