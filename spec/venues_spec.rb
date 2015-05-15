require('spec_helper')

describe(Venue) do
  it { should have_and_belong_to_many(:bands) }

  it('validates the presence of a name') do
    venue = Venue.new(location: 'NYC')
    expect(venue.save).to eq(false)
  end

  it('it capitalizes all the words in the name') do
    venue = Venue.create(name: 'the fillmore')
    expect(venue.name).to eq('The Fillmore')
  end
end
