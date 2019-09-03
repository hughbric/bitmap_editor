require 'canvas'

describe Canvas do
  it 'prints out a correctly sized canvas' do
    x = 3
    y = 3
    canvas = Canvas.new(x, y)
    expect{ canvas.print }.to output("OOO\nOOO\nOOO\n").to_stdout
  end
end