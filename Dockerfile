FROM elixir:1.2.5

# wget for convenience, use curl if you want to
RUN apt-get -y -q install wget
RUN apt-get -y -q install git

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get -y -q install nodejs

RUN mix local.hex --force
RUN mix hex.config mirror_url https://cdn.jsdelivr.net/hex

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD mix.* $APP_HOME/

ENV MIX_ENV=docker

RUN mix deps.get

ADD . $APP_HOME

RUN npm install -g brunch
RUN npm install
RUN brunch build --production

RUN mix deps.compile
RUN mix phoenix.digest
RUN mix compile
RUN mix release

