class Whiteboard
  attr_accessor :contents

  def initialize(contents = [])
    @contents = contents
  end

  def erase
    contents = []
  end

class DryEraseMarker
  attr_reader :color, :capacity
  def initialize(color)
    @color = color
    @capacity = 100
  end

  def empty?(capacity)
    if @capacity == 0
      return true
    else
      return false
  end

  INK_USE_PER_CHARACTER = 0.01
  def write(contents, whiteboard)
    @capacity = @capacity - (INK_USE_PER_CHARACTER * contents.length)
    whiteboard.contents << contents
  end
end