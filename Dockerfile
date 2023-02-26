FROM jekyll/jekyll:latest

# Set working directory, where the commands will be ran:
RUN mkdir -p /app
WORKDIR /app

# Adding gems
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install --jobs 20 --retry 5 --without development test

# Adding project files
COPY . .
RUN bundle exec jekyll build

# Copy static files
COPY ./build /build