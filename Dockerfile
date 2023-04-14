
# Use the official Node.js image as the base image
FROM node:lts-alpine3.17

ENV NODE_ENV=production

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the application files into the working directory
COPY . /usr/src/app

ENV PORT 8080

# Install the application dependencies
RUN npm install --production

EXPOSE 8080

# Define the entry point for the container
CMD ["npm", "start"]
