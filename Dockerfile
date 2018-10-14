FROM elixir:latest

RUN mkdir /app
WORKDIR /app

RUN \
 set -x && \
 apt-get update && \
 curl -sL https://deb.nodesource.com/setup_9.x | bash - && \
 apt-get install -y \
  nodejs \
  npm \
  mysql-client \
  inotify-tools \
  git \
  --no-install-recommends && \
 rm -rf /var/lib/apt/lists/* && \
 npm cache verify && \
 npm install n -g && \
 n stable && \
 ln -sf /usr/local/bin/node /usr/bin/node && \
 apt-get purge -y nodejs npm

RUN yes | mix local.hex --force
RUN yes | mix local.rebar --force
RUN yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
