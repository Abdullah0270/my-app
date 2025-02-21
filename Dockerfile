FROM nginx:latest
COPY dist/my-app /usr/share/nginx/html
EXPOSE 80
