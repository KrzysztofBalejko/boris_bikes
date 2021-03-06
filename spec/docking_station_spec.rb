require 'docking_station.rb'


RSpec.describe DockingStation do
  before do
    @docking_station = DockingStation.new
  end


  it { is_expected.to respond_to(:release_bike) }

  it 'releases working bikes' do
    @docking_station.instance_variable_set(:@bikes, [Bike.new, Bike.new])
    bike = @docking_station.release_bike
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
    expect { @docking_station.release_bike }.to raise_error('no bikes!')
  end

  it 'raises an error if station is full' do
    @docking_station.capacity.times { @docking_station.dock(Bike.new) }
    expect { @docking_station.dock(Bike.new) }.to raise_error('Rack is full!')
  end

  it 'returns an empty array' do
    expect(@docking_station.bikes).to eq Array.new
  end

  it 'removes a bike from the array when release_bike' do
    @docking_station.dock(Bike.new)
    @docking_station.release_bike
    expect(@docking_station.bikes.count).to eq 0
  end

  it 'docks a bike when it is partly full' do
    @docking_station.dock(Bike.new)
    @docking_station.dock(Bike.new)
    expect(@docking_station.bikes.count).to eq 2
  end

  it 'allows user to set capacity instance variable on initialization' do
    @docking_station = DockingStation.new(23)
    expect(@docking_station.capacity).to eq 23
  end

  it 'has a default capacity of 20' do
    expect(@docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  # it 'allows to report on broken bike' do
  #   expect{ @docking_station.report }.to output(/Is everything ok with your bike/).to_stdout
  # end

  it 'can be reported broken' do
    bike = Bike.new
    bike.report_broken
    expect(bike).to be_broken
  end


end
