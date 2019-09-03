require 'command_index'
require 'canvas'

describe CommandIndex do
  it "'I M N': sets up a new canvas" do
    command = ['I', '2', '2']
    expect(CommandIndex.execute(command)).to eq([['O', 'O'], ['O', 'O']])
  end

  it "'S': prints out a canvas" do
    command = ['I', '2', '2']
    CommandIndex.execute(command)
    print_command = ['S']
    expect{ CommandIndex.execute(print_command) }.to output("OO\nOO\n").to_stdout
  end

  it "'L X Y C': colours a coordinate" do
    command = ['I', '2', '2']
    CommandIndex.execute(command)
    command = ['L', '2', '2', 'A']
    CommandIndex.execute(command)
    print_command = ['S']
    expect{ CommandIndex.execute(print_command) }.to output("OA\nOO\n").to_stdout
  end

  it "'?': displays help" do
    command = ['?']
    help = "Command formats:\n"\
            "'I M N': sets up a new canvas\n"\
            "'S': prints out a canvas\n"\
            "'L X Y C': colours a coordinate\n"
    expect{ CommandIndex.execute(command) }.to output(help).to_stdout
  end

  it "'V X Y1 Y2 C': colours a vertial segment" do
    command = ['I', '3', '3']
    CommandIndex.execute(command)
    command = ['V', '1', '1', '3', 'A']
    CommandIndex.execute(command)
    print_command = ['S']
    expect{ CommandIndex.execute(print_command) }.to output("AOO\nAOO\nAOO\n").to_stdout
  end
end
