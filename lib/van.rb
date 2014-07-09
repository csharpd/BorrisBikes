require_relative 'bike_container'
require 'docking_station'
class Van

include BikeContainer


  def collect_broken(docking_station)
    docking_station.broken_bikes.each do |bike|
      docking_station.release(bike)
      self.dock(bike)
      # self.dock(docking_station.release(bike))
    end
  end
end
