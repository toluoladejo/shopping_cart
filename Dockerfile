# Official base image
FROM node:14-alpine

# Set Working directory
WORKDIR /app

# File host to put in cointainer images
COPY package*.json ./app

# Instruction to run command
RUN npm install
RUN npm install -g nodemon
RUN npm install express
RUN npm install cors

# Copy source code
COPY . .

# Expose the port application runs on
EXPOSE 3000

# Command to start the application
CMD ["npm" , "start"]
