# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy your website files into the container (adjust path as needed)
# This assumes you have a folder 'html' in your project with an index.html
COPY ./html /usr/share/nginx/html

# Expose port 80 to access the Nginx server
EXPOSE 80

# The default command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
