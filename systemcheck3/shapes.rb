class Square

  def initialize (side)
    @side = side
  end

  attr_reader :side

  def perimeter
    side * 4.0
  end

  def area
    side ** 2.0
  end

end

class Circle

  def initialize (radius)
    @radius = radius
  end

  attr_reader :radius

  def diameter
    radius * 2
  end

  def circumference
    radius * 2 * Math::PI
  end

  def area
    ((Math::PI * radius) ** 2)
  end

end

class Rectangle

  def initialize (length, width)
    @length = length
    @width = width
  end

  attr_reader :length
  attr_reader :width

  def perimeter
    (length * 2) + (width * 2)
  end

  def area
    length * width
  end
end

class RightTriangle

  def initialize (some_side, some_other_side)
    @some_side = some_side
    @some_other_side = some_other_side
  end

  attr_reader :some_side
  attr_reader :some_other_side

  def hypotenuse
    Math.sqrt(((some_side ** 2) + (some_other_side ** 2)))
  end

  def perimeter
    some_side + some_other_side + hypotenuse
  end

  def area
    (some_side * some_other_side) / 2
  end

end
