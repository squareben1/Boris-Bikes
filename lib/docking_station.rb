require_relative 'bike'

class DockingStation

  attr_reader :bike_rack, :capacity
 
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bike_rack = []
    @capacity = capacity
  end 

  def release_bike
    fail "Error. No Bike." if empty?
    @bike_rack.pop
  end

  def dock(bike)
    fail "Error docking station full." if full?
    @bike_rack << bike 
  end

  private

  def full?
     @bike_rack.count >= @capacity
  end

  def empty?
     @bike_rack.empty?
  end

end



