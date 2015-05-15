require('bundler/setup')
Bundler.require(:default)
# require "pry"

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
  erb(:band_info)
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
