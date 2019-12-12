require_relative 'bike'

class DockingStation

  attr_reader :bike_rack

  def initialize 
    @bike_rack = []
  end 

  def release_bike
    fail "Error. No Bike." unless @bike_rack.count >= 1
    @bike_rack.pop
  end

  def dock(bike)
    fail "Error docking station full." if @bike_rack.count >= 20
    @bike_rack << bike
  end

end

