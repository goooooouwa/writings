FROM jekyll/jekyll:4.1.0

COPY . /srv/jekyll
RUN jekyll build --trace

CMD ["jekyll", "serve"]
