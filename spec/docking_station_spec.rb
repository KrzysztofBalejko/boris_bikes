require 'docking_station.rb'


describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike.working?).to eq (true)
  end

  it 'dock a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to(:bike) }

end
