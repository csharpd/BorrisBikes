require './lib/bike_container'

shared_examples 'a bike container' do
  let(:container)    {described_class.new                }
  let(:bike)         { double :bike                      }
  let(:working_bike) { double :bike, broken?: false      }
  let(:broken_bike)  { double :bike, broken?: true, break!: :bike }

  def fill_in(container)
    (container.capacity).times { container.dock(bike) }
  end

  it 'has no bikes' do
    expect(container.bikes).to eq []
  end

  it 'should accept a bike' do
    expect(container.bike_count).to eq(0)
    container.dock(bike)
    expect(container.bike_count).to eq(1)
  end

  it 'should release a bike' do
    container.dock(bike)
    container.release(bike)
    expect(container.bike_count).to eq(0)
  end

  it 'should know when its full' do
    expect(container).not_to be_full
    fill_in(container)
    expect(container).to be_full
  end

  it 'should not accept a bike if it is full' do
    fill_in(container)
    expect{container.dock(bike)}.to raise_error(RuntimeError)
  end

  it 'should provide the list of available bikes' do
    # allow(broken_bike).to receive(:break!)
    # allow(broken_bike).to receive(:broken?).and_return(true)
    # allow(working_bike).to receive(:broken?).and_return(false)
    broken_bike.break!
    container.dock(broken_bike)
    container.dock(working_bike)
    expect(container.available_bikes).to eq([working_bike])
    end

  it 'should provide the list of broken bikes' do
    broken_bike.break!
    container.dock(broken_bike)
    container.dock(working_bike)
    expect(container.broken_bikes).to eq([broken_bike])
  end

end
