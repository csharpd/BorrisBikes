require_relative 'bike_container'

class Garage

  include BikeContainer

  def fix_broken_bikes!
  broken_bikes.each {|bike| bike.fix!}
  end

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
    @garage = []
  end
end