require_relative 'bike'

class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bike' if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise 'No capacity' if @bikes.length >= 20
    @bikes.push(bike)
    bike
  end
end
