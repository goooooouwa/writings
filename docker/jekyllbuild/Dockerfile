FROM jekyll/jekyll:4.1.0

COPY . /srv/jekyll
RUN jekyll build --trace

EXPOSE 4000
CMD ["jekyll", "serve", "--watch", "--incremental"]
