FROM ruby

ENV INSTALL_PATH /app

RUN mkdir $INSTALL_PATH

WORKDIR $INSTALL_PATH

RUN git clone "https://github.com/sferik/t" $INSTALL_PATH

RUN gem install t

RUN touch /root/.trc

ENTRYPOINT [ "t" ]
