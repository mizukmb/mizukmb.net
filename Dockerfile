FROM nginx:latest

RUN mkdir -p /var/www/app

COPY config/nginx/conf.d/mizukmb.net.conf /etc/nginx/conf.d/mizukmb.net.conf
COPY config/nginx/nginx.conf /etc/nginx/nginx.conf

COPY . /var/www/app

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
