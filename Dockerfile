FROM ruby:3.1.1

WORKDIR /home/app/

ENV PORT 3000

EXPOSE $PORT

COPY . .

RUN apt-get update -qq
RUN gem install rails bundler
RUN gem install rails
RUN bundler install

CMD rm -f tmp/pids/server.pid && rails s -b 0.0.0.0