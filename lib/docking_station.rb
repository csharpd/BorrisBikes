require_relative 'bike_container'

class DockingStation

include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
    @bikes = []
  end

  def broken_bikes_list(broken_bikes)
    [] << broken_bikes
  end

end