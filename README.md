# README

RateAPI to be used with rate application. Makes use of mysql database to store currencies, markets and prices.

## Running the api in Docker Compose
### NOTE Docker toolbox for mac and windows already comes with docker-compose. Linux users to install docker compose ontop of docker engine.

*	Clone API repo

*	edit config/database.yml to look like below
```default: &default
  adapter: mysql2
  encoding: utf8
  username: root
  password: pass #edit password to suit xampp configuration, default is blank. For docker, use "pass"
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000
  host: mysql  #comment out line when using xampp 
  ```

*	Using terminal
*	CD into cloned folder
*	type the following:
*	`docker-compose build`
*	`docker-compose up`
*	In another terminal type the following
*	`docker-compose run app rake db:create db:migrate db:seed`

API container should be running, and see output visiting

*	<machine-ip>:3000/rates ; <machine-ip>:3000/markets ; <machine-ip>:3000/currencies



## Running the api in windows

*	install railsinstaller-3.4.0 (comes with ruby 2.3.3p222 , and Rails 5.1.6.1) https://s3.amazonaws.com/railsinstaller/Windows/railsinstaller-3.4.0.exe
*	install XAMPP for mysql database, start Apache and MySQL https://filehippo.com/download_xampp/77557/
*	install gitBash for commands https://git-scm.com/downloads
*	clone directory to a working directory on your machine

*	edit config/database.yml to look like below

```default: &default
  adapter: mysql2
  encoding: utf8
  username: root
  password: #edit password to suit xampp configuration, default is left blank. For docker, use "pass"
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000
  #host: mysql  #comment out line when using xampp 
  ```

*	Navigate to working directory with gitBash, type "bundle install" or "bundle update" to fetch gems
*	type "rake db:create db:migrate db:seed" to create table and populate it
*	Start another instance of gitBash in working directory, type "rails s" to start on default port 3000
*	check if API is working by visiting "localhost:3000/markets" or "localhost:3000/rates" or "localhost:3000/currencies"
	