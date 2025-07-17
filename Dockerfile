# Use official Nginx image as base
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static assets
RUN rm -rf ./*

# Copy CAL.HTML to container as index.html
COPY CAL.html ./index.html

# Expose port 80
EXPOSE 80

# No CMD needed, nginx default
