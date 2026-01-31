# Use lightweight nginx alpine image
FROM nginx:alpine

# Copy your HTML file
#COPY index.html /usr/share/nginx/html/index.html

# Optional: Add custom nginx config
# COPY nginx.conf /etc/nginx/nginx.conf

# Optional: Set labels
LABEL maintainer="Mohammed AlShafei"
LABEL version="1.0"
LABEL description="Hello World Web App"

# Expose port 80
EXPOSE 80

# nginx runs automatically with CMD from base image