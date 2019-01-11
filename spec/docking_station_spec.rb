require 'docking_station.rb'


RSpec.describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it 'releases working bikes' do
    docking_station = DockingStation.new
    docking_station.instance_variable_set(:@bikes, [Bike.new, Bike.new])
    bike = docking_station.release_bike
    expect(bike.working?).to eq (true)
  end

  it 'dock a bike' do
    bike = Bike.new
    expect(subject.dock(bike)[0]).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes[0]).to eq bike
  end

  it 'raises an error if station is empty' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error('no bikes!')
  end

  it 'raises an error if station is full' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(Bike.new)
    expect { docking_station.dock(Bike.new) }.to raise_error('Rack is full!')
  end

  it 'returns an empty array' do
    docking_station = DockingStation.new
    expect(docking_station.bikes).to eq Array.new
  end
end
