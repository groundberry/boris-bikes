require_relative 'bike'

class DockingStation

attr_reader :bike

	def release_bike
		 fail "No more bikes available" unless @bikes
		 Bike.new
		#bike.working? == true
	end

	def dock(bike)
		@bikes = bike
	end

end
