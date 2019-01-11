require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if empty?
      fail 'no bikes!'
    end
    @bikes.pop
  end

  def dock(bike)
    if full?
      fail 'Rack is full!'
    end
    @bikes << bike
  end

  def full?
    if @bikes.count >= 20
      return true
    else
      return false
    end
  end

  def empty?
    if @bikes == []
      return true
    else
      return false
    end
  end

end
