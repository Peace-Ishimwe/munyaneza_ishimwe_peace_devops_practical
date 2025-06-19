# Use official Node.js LTS image
FROM node:22

# Set working directory
WORKDIR /usr/src/app

# Copy files
COPY package*.json ./
RUN npm install
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["npm", "start"]