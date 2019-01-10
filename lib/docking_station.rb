require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike

    if @bike == nil
      fail 'no bikes!'
    end
    Bike.new
  end

  def dock(bike)
    if @bike == bike
      fail 'Rack is full!'
    end
    @bike = bike
  end
end
