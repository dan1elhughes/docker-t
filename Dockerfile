FROM ruby:alpine

RUN apk --update --no-cache add git make g++

RUN gem install t

RUN touch /root/.trc

ENTRYPOINT [ "t" ]
