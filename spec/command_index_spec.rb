require 'command_index'
require 'canvas'

describe CommandIndex do
  it 'sets up a new canvas' do
    command = ['I', '2', '2']
    expect(CommandIndex.execute(command)).to be_a(Canvas)
  end

  it 'prints out a canvas' do
    command = ['I', '2', '2']
    CommandIndex.execute(command)
    second_command = ['S']
    expect{ CommandIndex.execute(second_command) }.to output("OO\nOO\n").to_stdout
  end
end
