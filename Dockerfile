FROM ruby:2.7-slim

ENV BUNDLER_VERSION=2.1.4
# Instala nossas dependencias
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev imagemagick libmagickwand-dev

RUN gem install bundler -v 2.1.4

# Seta nosso path
ENV INSTALL_PATH /petshop_admin
# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH
# Seta o nosso path como o diretório principal
WORKDIR $INSTALL_PATH
# Copia o nosso Gemfile para dentro do container
COPY Gemfile ./

RUN bundle check || bundle install

# Copia nosso código para dentro do container
COPY . .

# Seta o path para as Gems
ENV BUNDLE_PATH /box
# Copia nosso código para dentro do container
COPY . .

ENV PORT=3000