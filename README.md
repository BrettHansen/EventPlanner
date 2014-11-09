Event Planner
=============


Requirements
------------

* [Ruby on Rails](http://rubyonrails.org/download)

    *Another option is [Rails Installer](http://railsinstaller.org/en). This works very well for Windows and will include the following:*
      * *Ruby 1.9.3*
      * *Rails 3.2*
      * *Bundler*
      * *Git*
      * *Sqlite*
      * *TinyTDS*
      * *SQL Server Support*
      * *DevKit*

* [Ruby Racer](https://github.com/hiranpeiris/therubyracer_for_windows)

* [NodeJS](http://nodejs.org/)

* [ImageMagick](http://www.imagemagick.org/)

Install
-------

* Be sure all of the above software is installed, and then inside of a command prompt or terminal, navigate to project root folder

* Use bundle install to install the appropriate dependencies. `bundle install`

* If a database does not already exist, create and seed a new database with `rake db:migrate db:seed`

* If a database does already exist use `rake db:reset db:migrate db:seed` to overwrite

* Start the server with `rails s`

* Go to "http://localhost:3000" in your web browser

* Done!