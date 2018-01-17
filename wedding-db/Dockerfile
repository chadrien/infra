FROM mysql

RUN ln -s /secrets/.env /root/.env

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]