# Official base image 
FROM node:14-alpine

# Set Working directory
WORKDIR /app

# File host to put in cointainer images
COPY package*.json ./app

# Instruction to run command
RUN npm install

# Copy source code
COPY src ./app

# Expose the port application runs on
EXPOSE 3000

# Command to start the application
CMD ["npm" , "start"]