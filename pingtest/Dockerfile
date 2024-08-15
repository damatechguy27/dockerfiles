# Use the official Nginx image as the base image
FROM nginx:stable-alpine

# Install the ping utility and bash
RUN apk add --no-cache iputils bash

RUN  rm -rf /usr/share/nginx/html/* && touch /usr/share/nginx/html/index.html && echo "hello world" >> /usr/share/nginx/html/index.html

# Set the working directory
WORKDIR /usr/local/bin

# Copy the ping script into the container
COPY ping_script.sh .

# Make the script executable
RUN chmod +x ping_script.sh

# Set the environment variable to the current working directory
ENV CURRENTDIR=/usr/local/bin

EXPOSE 80:80
# Run the ping script when the container starts
CMD ["bash", "-c", "$CURRENTDIR/ping_script.sh"]

