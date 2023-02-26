FROM jekyll/jekyll:4.1.1

# Set working directory, where the commands will be ran:
WORKDIR $RAILS_ROOT

ARG build_command
ENV BUILD_COMMAND ${build_command}

RUN bundle install

CMD ${BUILD_COMMAND}
