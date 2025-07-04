FROM ruby:3.2.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN mkdir -p tmp/pids

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]

