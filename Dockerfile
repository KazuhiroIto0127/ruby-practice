FROM ruby:3.2.0

RUN gem install bundler

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install
COPY . .
