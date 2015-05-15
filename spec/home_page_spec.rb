require('spec_helper')

describe('the root path', type: :feature) do
  it('visits the home page') do
    visit('/')
    expect(page).to have_content('Band Tracker')
  end
end
