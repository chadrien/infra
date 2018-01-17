FROM httpd:2.4.29-alpine

RUN apk update && \
    apk add --virtual .build-dependencies --no-cache git

RUN rm -rf /usr/local/apache2/htdocs && \
    git clone -n https://github.com/keeweb/keeweb.git /usr/local/apache2/htdocs && \
    cd /usr/local/apache2/htdocs && \
    git checkout 1445ef2 && \
    sed -i -e s/847548101761-koqkji474gp3i2gn3k5omipbfju7pbt1/349995632409-35a10ktasne88263u205a6gms7lbdhbt/ index.html

RUN apk del .build-dependencies