FROM ruby:2.4.1

RUN apt-get update -qq && apt-get install -y build-essential netcat nano

RUN mkdir /rails
WORKDIR /rails
ADD Gemfile /rails/Gemfile
ADD Gemfile.lock /rails/Gemfile.lock
RUN bundle install
ADD . /rails