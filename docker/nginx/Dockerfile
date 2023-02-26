# Base image:
FROM linuxserver/nginx:latest

# Copy Nginx config template
COPY docker/nginx/nginx.conf /config/nginx/site-confs/default.conf

EXPOSE 443

# Use the "exec" form of CMD so Nginx shuts down gracefully on SIGTERM (i.e. `docker stop`)
CMD [ "nginx", "-g", "daemon off;" ]
