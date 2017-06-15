FROM ruby:2.4.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p /var/www/shadowing
WORKDIR /var/www/shadowing

COPY . /var/www/shadowing
RUN bundle install --jobs=4
