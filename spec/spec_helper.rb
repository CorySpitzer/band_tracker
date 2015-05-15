ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)

Capybara.app = Sinatra::Application
require('./app')
set(:show_exceptions, false)

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do

    # Category.all().each() do |category|
    #   category.destroy()
    # end
  end
end
