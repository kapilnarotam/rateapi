#FROM rails:onbuild
FROM ruby:2.3.3
RUN gem install bundler

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs mysql-client libmysqlclient-dev
ENV MYSQL_PWD pass
RUN echo "mysql-server mysql-server/root_password password $MYSQL_PWD" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password $MYSQL_PWD" | debconf-set-selections
RUN apt-get -y install mysql-server
RUN gem install rails -v '5.1.6'



ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

ADD Gemfile* $APP_HOME/
RUN gem install bundler && bundle install

ADD . $APP_HOME
