require 'bikes'
require 'docking_station'
require 'van'


describe DockingStation do
let (:station) {DockingStation.new(:capacity => 123)}
let (:bike) {Bike.new}

it 'should allow setting default capacity on initialising' do
  expect(station.capacity).to eq(123)
  end

it 'should have a list of broken bikes that it contains' do
    broken_bike1  = Bike.new.break!
    broken_bike2  = Bike.new.break!
    working_bike3 = Bike.new
    expect(broken_bikes_list(broken_bikes)).to eq[broken_bike1, broken_bike2]
end

end