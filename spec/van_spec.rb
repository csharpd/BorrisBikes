require 'container_spec'
require 'van'


describe Van do

  it_behaves_like 'a bike container'

  it 'should only pick up broken bikes' do
    #To look at the bikes in the docking station. If a bike in the docking station is broken, receive it in the van.
    van = Van.new
    docking_station = DockingStation.new
    bike1 = Bike.new
    bike2 = Bike.new
    bike1.break!
    docking_station.dock(bike1)
    docking_station.dock(bike2)
    expect(van.collect_broken(docking_station)).to eq [(bike1)]
  end
end