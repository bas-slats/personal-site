FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

# Copy over the project
COPY nginx/nginx.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html

EXPOSE 80