require 'rspec'
require_relative 'shapes'

#refactor to eliminate repeated text

describe Square do

  it "takes the length of on of square's sides" do
    square = Square.new(10.0)
    expect(square.side).to eq(10)
  end

  it 'calculates the perimeter' do
    square = Square.new(10.0)
    expect(square.perimeter).to eq(40.0)
  end

  it 'calculates the area' do
    square = Square.new(10.0)
    expect(square.area).to eq(100)
  end
end

describe Circle do

  it 'takes the radius of a circle' do
    circle = Circle.new(5.0)
    expect(circle.radius).to eq(5.0)
  end

  it 'calculates the diameter' do
    circle = Circle.new(5.0)
    expect(circle.diameter).to eq(10.0)
  end

  it 'calculates the circumference' do
    circle = Circle.new(5.0)
    expect(circle.circumference).to eq (5.0 * 2 * Math::PI)
  end

  it 'calculates the area' do
    circle = Circle.new(5.0)
    expect(circle.area).to eq ((Math::PI * 5.0) ** 2)
  end
end

describe Rectangle do

  let(:rectangle_length) {10}
  let(:rectangle_width) {5}
  let(:rec) do
    Rectangle.new(rectangle_length, rectangle_width)
  end

  it 'initializes a variable for the length and width' do
    expect(rec.length).to eq (10)
    expect(rec.width).to eq (5)
  end

  it 'calculates the perimeter' do
    expect(rec.perimeter).to eq (30)
  end

  it 'calculates the area' do
    expect(rec.area).to eq (50)
  end
end

describe RightTriangle do

  it 'initializes a variable for the two sides that are not the dumb hypotenuse' do
    right_triangle = RightTriangle.new (3),(4)
    expect(right_triangle.some_side).to eq (3)
    expect(right_triangle.some_other_side).to eq (4)
  end

  it 'calculates the hypotenuse (which is just about my least favorite word)' do
    right_triangle = RightTriangle.new (14),(48)
    expect(right_triangle.hypotenuse).to eq (50)
  end

  it 'calculates the perimeter' do
    right_triangle = RightTriangle.new (3),(4)
    expect(right_triangle.perimeter).to eq (12)
  end

  it 'should calculate the area' do
    right_triangle = RightTriangle.new (3),(4)
    expect(right_triangle.area).to eq (6)
  end
  #I used should on purpose because I am rebelious
end
