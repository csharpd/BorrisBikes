require 'bikes'

describe Bike do
  it "should not be broken when it is created" do
    bike = Bike.new
    expect(bike).not_to be_broken
  end
end