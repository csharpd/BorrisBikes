require './lib/bike_container'

shared_examples 'a bike container' do
  let (:containter) {described_class.new(capacity :10) }

  it 'has no bikes' do
    expect (container).not_to have_bikes
  end

end