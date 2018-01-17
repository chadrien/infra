FROM mysql

RUN ln -s /secrets/.env /root/.env

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 3306

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "mysqld" ]