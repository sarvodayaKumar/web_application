# Use a specific version of the Nginx image
FROM nginx:1.21.3-alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy static content
COPY index.html /usr/share/nginx/html/index.html

# Set permissions
RUN chown -R nginx:nginx /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Add a health check for Nginx
HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
  CMD curl --fail http://localhost/ || exit 1

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
