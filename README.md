band_tracker
By Cory Spitzer

Started May 15th, 2015
For Epicodus code review

DB Overview:

bands
-------------
id
name
genre

venues
-------------
id
name
location

shows
-------------
id
band_id
venue_id
date


Setup Instructions:
  * Recreate the db using `rake db:schema:load`
  * Launch the server with `ruby app.rb`
  * Visit http://localhost:4567/
  * Enjoy!

MIT License
