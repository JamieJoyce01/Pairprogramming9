require './lib/bike.rb'
class DockingStation
  attr_reader :bikes
  def initialize
    @capacity = 1
    @bikes = []
  end

  def release_bike
    fail 'There are no bikes docked.' unless !@bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'Docking station full.' unless @bikes.length < @capacity
    @bikes.push(bike)
    return @bikes.last
  end
end
