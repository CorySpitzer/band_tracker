require('spec_helper')

describe('the band pages path', type: :feature) do
  it('visits the bands page') do
    visit('/bands')
    expect(page).to have_content('Bands:')
  end

  it('adds a band') do
    visit('/bands')
    fill_in('band_name', with: 'The Grateful Dead')
    click_button('Add')
    expect(page).to have_content('The Grateful Dead')
  end

  it('redirects to an error page if given a blank input') do
    visit('/bands')
    click_button('Add')
    expect(page).to have_content('cannot be blank')
  end

  it('visits a specific bands page') do
    ani = Band.create(name: 'Ani DiFranco')
    visit("/band/#{ani.id}")
    expect(page).to have_content('Ani DiFranco')
  end

  # it('allows a band to be deleted from the bands page') do
  #   godspeed = Band.create(name: 'Goodspeed You! Black Emperor')
  #   visit('/bands')
  #   click_button('delete')
  #   expect(page).to_not have_content('Goodspeed You! Black Emperor')
  # end
end
