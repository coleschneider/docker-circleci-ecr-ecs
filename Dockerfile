
# Pull base image from stock node image.
FROM node:10.9.0




# Make app directory
RUN mkdir /opt/app

# Add the current working folder to the /opt/src dir
ADD . /opt/app

# Set the current working directory to the new mapped folder.
WORKDIR /opt/app

# Install package.json
RUN npm install

# Expose the node.js port to the Docker host.
EXPOSE 3000

# Start the app
CMD [ "node", "app.js" ]