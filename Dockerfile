FROM agileecuador/ruby:latest

ADD Gemfile /src/Gemfile
ADD Gemfile.lock /src/Gemfile.lock

RUN bundle config --global silence_root_warning 1
RUN bundle install

ADD . /src
