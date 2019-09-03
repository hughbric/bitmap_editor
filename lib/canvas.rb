class Canvas
  def initialize(x, y)
    @x_axis_elements = x
    @y_axis_elements = y
    @colour = 'O'
    @canvas = []
  end

  def print
    @canvas.reverse.each do |x_axis_pixels|
      puts x_axis_pixels.join
    end
  end

  def populate_canvas
    @canvas = Array.new(@y_axis_elements) { Array.new(@x_axis_elements, @colour) }
  end

  def colour_coordinate(x, y, colour)
    @canvas[y][x] = colour
  end

  def colour_vertical(x, y1, y2, colour)
    @canvas.each_with_index.map do |row_x_pixels, index|
      if index.between?(y1, y2)
        row_x_pixels[x] = colour
      end
    end
  end

  def colour_horizontal(y, x1, x2, colour)
    @canvas[y].map.with_index do |pixel, index|
      if index.between?(x1, x2)
        @canvas[y][index] = colour
      end
    end
  end

  def clear
    @canvas.each_with_index do |row, i|
      colour_horizontal(i, 0, row.length, 'O')
    end
  end
end
