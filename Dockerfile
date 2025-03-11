# Dockerfile
FROM ruby:3.4.2

# Set the working directory
WORKDIR /app

# Install dependencies
RUN gem install rails

# Copy application files
COPY . .

# Install gems
RUN bundle install

# Expose the port the app runs on
EXPOSE 3000

# Start the server
CMD ["rails", "server", "-b", "0.0.0.0"]
