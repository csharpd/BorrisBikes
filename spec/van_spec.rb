require 'van'
require 'docking_station'
require 'bikes'
require 'garage'


describe Van do
let (:van) {Van.new}
let (:bike) {Bike.new}

# it 'should only collect bikes that are broken' do
#     broken_bike1  = Bike.new.break!
#     broken_bike2  = Bike.new.break!
#     working_bike3 = Bike.new
#     expect(van.dock(broken_bikes_list)).to eq[broken_bike1, broken_bike2]
#Given that the dock has broken and fixed bikes
#And the dock releases bikes to the van
#Only the broken bikes should be released
# end

end