# Use the official Node.js image as the base image
FROM node:16.20.1

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and yarn.lock files
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Run the app
CMD ["yarn", "start"]
