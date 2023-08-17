# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom configuration to the Nginx container
COPY nginx.conf /etc/nginx/conf.d
COPY ssl /etc/nginx/ssl

# Copy your index.html to the default web root
COPY index.html /usr/share/nginx/html

# Expose ports 80 and 443
EXPOSE 80
EXPOSE 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
