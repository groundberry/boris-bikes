require_relative 'bike'

class DockingStation
  attr_accessor :bike

  def initialize
    @bike = []
  end

  def release_bike
    raise 'No bike' if @bike.empty?
    @bike.pop
  end

  def dock_bike(bike)
    raise 'No capacity' unless @bike.empty?
    @bike.push(bike)
    bike
  end
end
