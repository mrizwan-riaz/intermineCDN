# Use the official Nginx base image
FROM nginx:latest


# Copy the Nginx configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files (e.g., assets for CDN) into the container
# Assuming static files are in a folder called 'cdn-assets' in the same directory as this Dockerfile
COPY cdn-assets /usr/share/nginx/html

# Expose port 80 to allow traffic
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
