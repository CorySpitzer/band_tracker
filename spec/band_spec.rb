require('spec_helper')

describe(Band) do
  it { should have_and_belong_to_many(:venues) }

  it('validates the presence of a name') do
    band = Band.new(genre: 'post-rock')
    expect(band.save).to eq(false)
  end
end
