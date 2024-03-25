# Use an official Node.js runtime as the base image
FROM node:18.18.1-alpine

LABEL maintainer="Viney Vean <viney.vean@gmail.com>"

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY ../fe-tmpl-nuxt3-dynamic-form/package*.json ./
COPY ../fe-tmpl-nuxt3-dynamic-form/.env.* ./

# Install the application dependencies (including node_modules)
RUN npm install

# Expose the port that the Nuxt.js application will listen on (default is 3000)
EXPOSE 3000
