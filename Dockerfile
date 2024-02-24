FROM ruby:3.1.4-alpine3.19

WORKDIR /app

COPY Gemfile Gemfile.lock ./

COPY package.json yarn.lock ./

RUN apk add -U --no-cache build-base openssl tzdata vim postgresql-dev postgresql-client yarn

RUN bundle config set --local deployment 'true'
RUN [ "bundle", "install", "--no-cache" ]

RUN [ "yarn", "install" ]

COPY . .


ENTRYPOINT [ "/bin/sh" ]

