FROM jekyll/jekyll:4.1.0

# Set working directory, where the commands will be ran:
# RUN mkdir -p /app
# WORKDIR /app

# # Adding gems
# COPY Gemfile Gemfile
# COPY Gemfile.lock Gemfile.lock
# RUN bundle install --jobs 20 --retry 5

# Adding project files
COPY . /srv/jekyll
# RUN mkdir .jekyll-cache _site
RUN jekyll build --trace

