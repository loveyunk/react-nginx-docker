FROM nginx
LABEL author="loveyunk"
LABEL name="react-nginx-docker"
LABEL version=0.0.1
COPY ./build /var/www
COPY nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT ["nginx","-g","daemon off;"]
EXPOSE 80