FROM mophos/mmis-nginx

LABEL maintainer="Satit Rianpit <rianpit@gmail.com>"

WORKDIR /home/mmis

COPY ./server-script/ .
COPY ./config/nginx.conf /etc/nginx

COPY ./frontend/ .

COPY ./config/process.yaml .

CMD /usr/sbin/nginx && /usr/local/bin/pm2-runtime process.yaml

EXPOSE 80