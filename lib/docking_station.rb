require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    
    if @bikes == []
      fail 'no bikes!'
    end
    Bike.new
  end

  def dock(bike)
    if @bikes != [] || @bikes.length > 20
      fail 'Rack is full!'
    end
    @bikes << bike
  end
end
