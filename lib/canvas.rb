class Canvas
  def initialize(x, y)
    @x_axis_elements = x
    @y_axis_elements = x
    @colour = 'O'
    @canvas = []
  end

  def print
    populateCanvas
    @canvas.each do |y_axis_pixels|
      puts y_axis_pixels.join
    end
  end

  private

  def populateCanvas
    y_axis_pixels = Array.new(@y_axis_elements, @colour)
    @canvas = Array.new(@x_axis_elements, y_axis_pixels)
  end
end
