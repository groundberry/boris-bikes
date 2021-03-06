require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :dock_bike }

  describe '#release_bike' do
    it 'releases working bikes' do
      subject.dock_bike(Bike.new)
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it 'should raise an error when no bikes' do
      expect { subject.release_bike }.to raise_error('No bike')
    end
  end

  describe '#dock_bike' do
    it 'docks a bike' do
      subject.dock_bike(Bike.new)
      expect(subject.bikes).not_to be_empty
    end

    it 'returns instance of the docked bike' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq bike
    end

    it 'should raise an error when docking station is full' do
			stub_const("DEFAULT_CAPACITY", 20)
      DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
      expect { subject.dock_bike(Bike.new) }.to raise_error('No capacity')
    end

		it 'should allow the user to set a maximum capacity' do
			docking_station = DockingStation.new(45)
			expect(docking_station.capacity).to eq 45
		end
  end
end
