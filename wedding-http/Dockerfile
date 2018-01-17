FROM rails

RUN ln -s /secrets/.ssh /root/.ssh
RUN git clone git@bitbucket.org:chadrien/mariage.git /app
RUN ln -s /secrets/.env /app/.env

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 3000
ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "bundle", "exec", "rails", "server", "-b", "0.0.0.0" ]