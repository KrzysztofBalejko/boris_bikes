require 'docking_station.rb'


describe DockingStation do
  subject(:instance) { described_class.new }


  it { is_expected.to respond_to(:release_bike) }

  it 'Returns a bike' do
    expect(instance.release_bike.working?).to eq(true)

  end
end
