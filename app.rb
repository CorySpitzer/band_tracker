#TODO: Add the following user stories:
  # *As a user, I want to be able to add, update, delete and list bands.
  # *As a user, I want to be able to see all of the venues a band has played on
    # the individual band page.
  # *As a user, I want to be able to select venues where the band has played
    # (possibly with checkboxes).

require('bundler/setup')
Bundler.require(:default)
require "pry"

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

get('/') do
  erb(:index)
end

get('/error') do
  # @error_message = @@error_messages.fetch()
  erb(:error)
end

# *** BANDS ***

get('/bands') do
  @bands = Band.all
  erb(:bands)
end

post('/bands') do
  band = Band.create(name: params.fetch('band_name'))
  if band.valid?
    redirect('/bands')
  else
    redirect('/error')
  end
end

get('/band/:id') do |id|
  @band = Band.find(id)
  @venues = Venue.all
  erb(:band_info)
end

post('/band/:id') do |id|
  @band_venues = params.fetch(:venue_name)
  redirect("/band/#{id}")
end

# *** VENUES ***

get('/venues') do
  @venues = Venue.all
  erb(:venues)
end

post('/venues') do
  venue = Venue.create(name: params.fetch('venue_name'))
  if venue.valid?
    redirect('/venues')
  else
    redirect('/error')
  end
end












#
