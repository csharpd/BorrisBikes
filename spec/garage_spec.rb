require 'van'
require 'docking_station'
require 'bikes'
require 'garage'

describe 'garage' do
  it 'fixes the bikes it contains' do
     garage        = Garage.new
     broken_bike1  = Bike.new.break!
     broken_bike2  = Bike.new.break!
     working_bike3 = Bike.new
     garage.dock(broken_bike1)
     garage.dock(broken_bike2)
     garage.dock(working_bike3)

     expect(garage.broken_bikes).to eq [broken_bike1, broken_bike2]
     expect(garage.available_bikes).to eq [working_bike3]

     garage.fix_broken_bikes!

     expect(garage.available_bikes).to eq [broken_bike1, broken_bike2, working_bike3]


    # Given there are some broken bikes in the garage
    # And the garage fixes all the broken bikes
    # Then there shouldn't be any broken bikes in the garage
    # expect(garage).to fix_bikes
  end

  it 'should allow setting default capacity on initialising' do
    garage = Garage.new(:capacity =>1000)
    expect(garage.capacity).to eq(1000)
  end

end