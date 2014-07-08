class Bike
  def initialize
    fix!
  end

  def break!
    @broken = true
    self
  end

  def broken?
    @broken
  end

  def fix!
    @broken = false
    self
  end
end

