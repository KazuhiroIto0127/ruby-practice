FROM ruby:3.2.3

RUN gem install bundler

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install
COPY . .
