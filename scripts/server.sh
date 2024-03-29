#!/bin/sh

set -ex

bundle exec rails db:create
bundle exec rails db:migrate

yarn build
yarn build:css
bundle exec rails assets:precompile
bundle exec rails s -e production
