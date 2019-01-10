require 'docking_station.rb'


RSpec.describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  # it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike.working?).to eq (true)
  # end

  it 'dock a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'raises an error if station is empty' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error('no bikes!')
  end

  it 'raises an error if station is full' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect { docking_station.dock(bike) }.to raise_error('Rack is full!')
  end




end
