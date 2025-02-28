# Use an official Nginx image as the base image
FROM nginx:latest

# Set the working directory to Nginx's default static file location
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy the HTML and CSS files from the local directory to the container
COPY . /usr/share/nginx/html

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
