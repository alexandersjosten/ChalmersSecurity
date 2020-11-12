FROM ruby:2.5

USER root

RUN apt-get update
RUN apt-get install -y nodejs ghostscript

COPY Gemfile /opt/somecode/
COPY Gemfile.lock /opt/somecode/
WORKDIR /opt/somecode/

RUN gem install jekyll
RUN gem install bundler
RUN gem install octopress
RUN bundle install

RUN rm -f Gemfile
RUN rm -f Gemfile.lock

CMD /bin/bash
