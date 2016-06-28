FROM elixir:1.2.5

# wget for convenience, use curl if you want to
RUN apt-get -y -q install wget
RUN apt-get -y -q install git

RUN mix local.hex --force
RUN mix hex.config mirror_url https://cdn.jsdelivr.net/hex

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD mix.* $APP_HOME/

ENV MIX_ENV=docker

RUN mix deps.get

ADD . $APP_HOME

# RUN mix compile
RUN mix deps.compile
RUN mix release.clean --implode --no-confirm \
  && mix compile \
  && mix release
