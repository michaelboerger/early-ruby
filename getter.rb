class Car
  def initialize(color, owner, cylinders)
    @color = color
    @owner = owner
    @cylinders = cylinders
  end

  def color
    @color
  end

  def owner
    @owner
  end

  def cylinders
    @cylinders
  end
end

dans_car = Car.new('black', 'Dan', 4)
dans_car.color
dans_car.owner
dans_car.cylinders