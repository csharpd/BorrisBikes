require 'person'

describe Person do
  it 'has no bike' do
    person = Person.new
    expect(person).not_to have_bike
  end

  it 'can have a bike' do
    #this means 'the person has something - the symbol could be anything'
    person=Person.new(:bike)
    expect(person).to have_bike
  end

  it 'breaks a bike during a crash' do
    bike = double :bike
    person = Person.new(bike)
    expect(bike).to receive(:break!)
    person.crash
  end

  it 'can rent a bike' do
    bike = double :bike
    station = double :docking_station
    person = Person.new
    expect(station).to receive(:release_bike)
    person.rent_bike_from(station)
  end

  it 'has a bike once rents one from a station' do
    station = double :station , release_bike: :bike
    allow(station).to receive(:release_bike).and_return(:bike)
    person = Person.new
    person.rent_bike_from(station)
    expect(person).to have_bike
  end

end