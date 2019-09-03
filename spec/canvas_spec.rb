require 'canvas'

describe Canvas do
  it 'prints out a correctly sized canvas' do
    x = 3
    y = 3
    canvas = Canvas.new(x, y)
    canvas.populate_canvas
    expect{ canvas.print }.to output("OOO\nOOO\nOOO\n").to_stdout
  end

  it 'prints out a rectangle canvas' do
    x = 5
    y = 1
    canvas = Canvas.new(x, y)
    canvas.populate_canvas
    expect{ canvas.print }.to output("OOOOO\n").to_stdout
  end

  it 'prints out another rectangle canvas' do
    x = 1
    y = 5
    canvas = Canvas.new(x, y)
    canvas.populate_canvas
    expect{ canvas.print }.to output("O\nO\nO\nO\nO\n").to_stdout
  end

  it 'colours a coordinate (1:1)' do
    x_input = 3
    y_input = 3
    canvas = Canvas.new(x_input, y_input)
    canvas.populate_canvas
    canvas.colour_coordinate(0, 0, 'A')
    expect{ canvas.print }.to output("OOO\nOOO\nAOO\n").to_stdout
  end

  it 'colours an odd coordinate (1:3)' do
    x = 3
    y = 3
    canvas = Canvas.new(x, y)
    canvas.populate_canvas
    canvas.colour_coordinate(0, 2, 'A')
    expect{ canvas.print }.to output("AOO\nOOO\nOOO\n").to_stdout
  end
end