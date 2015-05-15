require('bundler/setup')
Bundler.require(:default)
# require "pry"

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

get('/') do
  erb(:index)
end

get('/bands') do
  erb(:bands)
end

get('/venues') do
  @venues = Venue.all
  erb(:venues)
end

post('/venues') do
  venue = Venue.create(name: params.fetch('venue_name'))
  redirect('/venues')
end











#
