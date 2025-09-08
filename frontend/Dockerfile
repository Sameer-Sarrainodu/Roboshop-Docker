#optimized method


FROM nginx:1.29.0-alpine

# Clean default configs and prepare directories
RUN rm -f /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf && \
    mkdir -p /var/cache/nginx/{client_temp,proxy_temp,fastcgi_temp,uwsgi_temp,scgi_temp} && \
    chown -R nginx:nginx /var/cache/nginx /etc/nginx /var/log/nginx && \
    chmod -R 755 /etc/nginx && \
    mkdir -p /etc/nginx/ssl && \
    chown -R nginx:nginx /etc/nginx/ssl && chmod -R 755 /etc/nginx/ssl && \
    touch /var/run/nginx.pid && chown nginx:nginx /var/run/nginx.pid

# Add custom config and static assets
COPY nginx.conf /etc/nginx/nginx.conf
COPY static /usr/share/nginx/html/

# Document the port
EXPOSE 80

# Drop privileges
USER nginx

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
















# # first method
# FROM nginx
# RUN rm -rf /usr/share/nginx/html/*
# RUN rm -rf /etc/nginx/nginx.conf
# RUN rm -rf /etc/nginx/conf.d/default.conf


# COPY nginx.conf /etc/nginx/nginx.conf
# COPY static /usr/share/nginx/html/
# CMD ["nginx", "-g", "daemon off;"]