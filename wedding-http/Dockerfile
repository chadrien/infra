FROM rails

RUN ln -s /secrets/.ssh /root/.ssh && \
    ln -s /secrets/.env /root/.env

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 3000
ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "bundle", "exec", "rails", "server", "-b", "0.0.0.0" ]