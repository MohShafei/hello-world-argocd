# Use lightweight nginx alpine image
FROM nginx:alpine

# Copy your HTML file
COPY index.html /usr/share/nginx/html/index.html

# Optional: Add custom nginx config for port 8080
RUN sed -i 's/listen\(.*\)80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

# Optional: Set labels
LABEL maintainer="Mohammed AlShafei"
LABEL version="1.0"
LABEL description="Hello World Web App"

# Expose port 8080
EXPOSE 8080

# nginx runs automatically with CMD from base image