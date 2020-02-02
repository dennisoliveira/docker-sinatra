FROM ruby:2.3

RUN gem update --system && gem install bundler

WORKDIR /root/sinatra

ADD . /root/sinatra
RUN bundle install

EXPOSE 4567
