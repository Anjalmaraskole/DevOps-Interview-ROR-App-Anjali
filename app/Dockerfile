# Use the official Ruby 
FROM ruby:3.2.2


# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set working directory
WORKDIR /myapp

# Copy Gemfiles first for caching
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the application code
COPY . .

# Precompile assets and setup
RUN bundle exec rake assets:precompile
RUN bundle exec rake db:migrate

# Expose port
EXPOSE 3000

# Start the server
CMD ["rails", "server", "-b", "0.0.0.0"]

