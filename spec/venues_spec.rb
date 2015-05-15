require('spec_helper')

describe(Venue) do
  it { should have_and_belong_to_many(:bands) }

  it('validates the presence of a name') do
    venue = Venue.new(location: 'NYC')
    expect(venue.save).to eq(false)
  end
end
