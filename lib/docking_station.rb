require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
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

  def report
    puts "Is everything ok with your bike ?"
  end

  private

  def full?
    if @bikes.count >= DEFAULT_CAPACITY
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
