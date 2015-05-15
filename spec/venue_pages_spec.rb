require('spec_helper')

describe('the venue pages path', type: :feature) do
  it('visits the venues page') do
    visit('/venues')
    expect(page).to have_content('Venues:')
  end

  it('adds a venue') do
    visit('/venues')
    fill_in('venue_name', with: 'The Fillmore East')
    click_button('Add')
    expect(page).to have_content('The Fillmore East')
  end
end
