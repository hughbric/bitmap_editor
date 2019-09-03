class Canvas
  def initialize(x, y)
    @x_axis_elements = x
    @y_axis_elements = x
    @colour = 'O'
    @canvas = []
  end

  def print
    @canvas.each do |y_axis_pixels|
      puts y_axis_pixels.join
    end
  end

  def populate_canvas
    @canvas = Array.new(@x_axis_elements) { Array.new(@y_axis_elements, @colour) }
  end

  def colour_coordinate(x, y, colour)
    @canvas[x][y] = colour
  end
end
