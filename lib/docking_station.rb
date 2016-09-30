require_relative 'bike'

class DockingStation
  attr_accessor :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bike' if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise 'No capacity' if full?
    @bikes.push(bike)
    bike
  end

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
