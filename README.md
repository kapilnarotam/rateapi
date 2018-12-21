# README

RateAPI to be used with rate application. Makes use of mysql database to store currencies, markets and prices.

Running the api in windows
	install railsinstaller-3.4.0 (comes with ruby 2.3.3p222 , and Rails 5.1.6.1) https://s3.amazonaws.com/railsinstaller/Windows/railsinstaller-3.4.0.exe
	install XAMPP for mysql database, start Apache and MySQL https://filehippo.com/download_xampp/77557/
	isntall gitBash for commands https://git-scm.com/downloads
	clone directory to a working directory on your machine
	Navigate to working directory with gitBash, type "bundle install" or "bundle update" to fetch gems
	type "rake db:create db:migrate db:seed" to create table and populate it
	Start another instance of gitBash in working directory, type "rails s" to start on default port 3000
	check if API is working by visiting "localhost:3000/markets" or "localhost:3000/rates" or "localhost:3000/currencies"
	
	

done by 
Kapil