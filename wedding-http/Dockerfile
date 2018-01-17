FROM rails

WORKDIR /data/app

RUN ln -s /secrets/.ssh /root/.ssh && \
    ln -s /secrets/.env /data/app/.env

RUN [ ! -d /data/app ] && git clone git@bitbucket.org:chadrien/mariage.git /data/app && \
    git pull --rebase

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 3000
ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "bundle", "exec", "rails", "server", "-b", "0.0.0.0" ]