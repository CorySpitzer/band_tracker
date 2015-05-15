require('spec_helper')

describe('the band pages path', type: :feature) do
  it('visits the bands page') do
    visit('/bands')
    expect(page).to have_content('Bands:')
  end
end
