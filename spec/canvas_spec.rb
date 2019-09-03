require 'canvas'

describe Canvas do
  it 'prints out a correctly sized canvas' do
    x = 3
    y = 3
    canvas = Canvas.new(x, y)
    canvas.populate_canvas
    expect{ canvas.print }.to output("OOO\nOOO\nOOO\n").to_stdout
  end

  it 'colours a coordinate' do
    x = 3
    y = 3
    canvas = Canvas.new(x, y)
    canvas.populate_canvas
    canvas.colour_coordinate(0, 0, 'A')
    expect{ canvas.print }.to output("AOO\nOOO\nOOO\n").to_stdout
  end
end