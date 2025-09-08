#optimized method
FROM nginx:1.29.0-alpine
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/nginx.conf
COPY static /usr/share/nginx/html/

# Create required directories with correct permissions
RUN mkdir -p /var/cache/nginx /var/run/nginx /var/log/nginx \
    && chown -R nginx:nginx /var/cache/nginx /var/run/nginx /var/log/nginx

USER nginx

CMD ["nginx", "-g", "daemon off;"]















# # first method
# FROM nginx
# RUN rm -rf /usr/share/nginx/html/*
# RUN rm -rf /etc/nginx/nginx.conf
# RUN rm -rf /etc/nginx/conf.d/default.conf


# COPY nginx.conf /etc/nginx/nginx.conf
# COPY static /usr/share/nginx/html/
# CMD ["nginx", "-g", "daemon off;"]