#optimized method
FROM nginxinc/nginx-unprivileged:1.23.1-alpine

# Remove default content
RUN rm -rf /usr/share/nginx/html/* /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Add your custom configuration and static files
ADD nginx.conf /etc/nginx/nginx.conf
ADD static /usr/share/nginx/html/

# Expose the necessary port
EXPOSE 80

# Command to run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]

# FROM nginx:1.29.0-alpine
# RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
# RUN rm -rf /usr/share/nginx/html/*
# RUN rm -rf /etc/nginx/nginx.conf
# RUN rm -rf /etc/nginx/conf.d/default.conf

# COPY nginx.conf /etc/nginx/nginx.conf
# COPY static /usr/share/nginx/html/

# # Create required directories with correct permissions
# RUN mkdir -p /var/cache/nginx /var/run/nginx /var/log/nginx \
#     && chown -R nginx:nginx /var/cache/nginx /var/run/nginx /var/log/nginx

# USER nginx

# CMD ["nginx", "-g", "daemon off;"]















# # first method
# FROM nginx
# RUN rm -rf /usr/share/nginx/html/*
# RUN rm -rf /etc/nginx/nginx.conf
# RUN rm -rf /etc/nginx/conf.d/default.conf


# COPY nginx.conf /etc/nginx/nginx.conf
# COPY static /usr/share/nginx/html/
# CMD ["nginx", "-g", "daemon off;"]