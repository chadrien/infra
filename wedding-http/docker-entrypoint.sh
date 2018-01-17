#!/usr/bin/env bash
set -e

if [ ! -d /app ]; then
  git clone git@bitbucket.org:chadrien/mariage.git /app
fi

cd /app

source /root/.env
export SECRET_KEY_BASE=$WEDDING_SECRET_KEY_BASE
export DROPBOX_ACCESS_TOKEN=$WEDDING_DROPBOX_ACCESS_TOKEN

cat > database.yml <<EOF
default: &default
  adapter: mysql2
  encoding: utf8
  pool: 5
  username: ${WEDDING_MYSQL_USER}
  password: ${WEDDING_MYSQL_PASSWORD}
  host: wedding-db
  database: ${WEDDING_MYSQL_DATABASE}
production:
  <<: *default
EOF

bundle --path=vendor/bundle --clean
bundle exec rake db:migrate
bundle exec rake assets:precompile
bundle exec rake assets:clean

exec "$@"