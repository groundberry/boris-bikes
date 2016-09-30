require_relative 'bike'

class DockingStation
  attr_accessor :bikes

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
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end
end
