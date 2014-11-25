![Event Planner Pro](https://github.com/BrettHansen/EventPlanner/blob/master/app/assets/images/logo.png "Event Planner Pro")
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

* [PostgreSQL] (http://www.postgresql.org/)

Install
-------

* Be sure all of the above software is installed, and then inside of a command prompt or terminal, navigate to project root folder

* Use bundle install to install the appropriate dependencies:
    ```
    bundle install
    ```

* Once and only once use the following command to create the database:
    ```
    rake db:create
    ```

* To migrate and seed the newly created database, use the following command:
    ```
    rake db:migrate db:seed
    ```

* If a database does already exist use the following to overwrite:
    ```
    rake db:reset
    ```

* Start the server
    ```
    rails s
    ```

* Go to "http://localhost:3000" in your web browser

* Done!

Testing
-------

* Start the server (as described above)
* In a command prompt window, navigate to the project directory, and execute the appropriate command:

    Unit Testing
        ```
        rake test
        ```

    Functional Testing
        ```
        cucumber
        ```


View the Site on Heroku
-------

* [Event Planner](http://eventplannercse360.heroku.com)
