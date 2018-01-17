FROM httpd:2.4.29-alpine

RUN apk update && \
    apk add --virtual .build-dependencies --no-cache git

RUN rm -rf /usr/local/apache2/htdocs && \
    git clone -n https://github.com/keeweb/keeweb.git /usr/local/apache2/htdocs && \
    cd /usr/local/apache2/htdocs && \
    git checkout 1445ef2

RUN apk del .build-dependencies