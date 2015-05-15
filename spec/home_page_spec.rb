require('spec_helper')
# this should be required already, but for some reason isn't
require('capybara/rspec')

describe('the root path', type: :feature) do
  it('visits the home page') do
    visit('/')
    expect(page).to have_content('Band Tracker')
  end
end
