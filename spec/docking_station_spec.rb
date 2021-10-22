require_relative '../lib/docking_station'

describe DockingStation do
    # it 'releases a bike' do
    #   docking_station = DockingStation.new
    #   expect(docking_station).to respond_to{docking_station.release_bike}
    # end
  it { is_expected.to respond_to{docking_station.release_bike} }

  it "docks a bike" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station).to respond_to(:dock).with(1).argument
    expect(docking_station.dock(bike)).to eq bike
  end

  it "checks if docking station has a bike" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:bikes)
  end

  it 'returns docked bikes' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.bikes).to eq bike
  end
  
  describe '#release_bike' do
    it 'raises exception if docking station has no bike' do
      docking_station = DockingStation.new
      expect { docking_station.release_bike }.to raise_exception
    end
  end

  it 'raises exception when docking station is full' do
    subject.dock(Bike.new)
    expect{ subject.dock Bike.new }.to raise_exception('Docking station full!')
  end

  
end
