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

  # it('redirects to an error page if given a blank input') do
  #   visit('/bands')
  #   click_button('Add')
  #   expect(page).to have_content('cannot be blank')
  # end

end
