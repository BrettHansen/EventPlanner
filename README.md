## Event Planner

In order to get this to work on your system, you will have to install [Ruby Racer](https://github.com/hiranpeiris/therubyracer_for_windows) and [NodeJS](http://nodejs.org/)

Once these are installed, use bundle install to install the appropriate dependencies.

Next, to create and seed the database call:

        rake db:migrate db:seed
if the database does not already exist, or

        rake db:reset db:migrate db:seed
to overwrite the existing database.

Then, to start the server, while in the project folder, run:

        rails s

Go to localhost:3000 in a browser to see the site!  Also, the database is excluded from the VCS so we each have our own
independent databases.