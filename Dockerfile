FROM ruby:3.2

# Install system dependencies
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs postgresql-client

# Set working directory
WORKDIR /chore-board

# Pre-copy Gemfiles to cache bundle layer
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy all app files
COPY . .

# Make the docker-entrypoint script executable
RUN chmod +x bin/docker-entrypoint

# Use our custom entrypoint
ENTRYPOINT ["bin/docker-entrypoint"]

# Expose the Rails port
EXPOSE 3000

# Default command
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]