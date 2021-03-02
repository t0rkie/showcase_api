FROM ruby:2.6.3

ENV LANG=C.UTF-8 \
  TZ=Asia/Tokyo

WORKDIR /app

RUN apt-get update -qq && \
  apt-get install -y nodejs postgresql-client

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install