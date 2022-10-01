FROM ruby:3
RUN gem install puma sinatra
COPY app.rb /usr/local/bin/
CMD RACK_ENV="production" app.rb
