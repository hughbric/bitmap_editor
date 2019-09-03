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
    first_command = ['I', '2', '2']
    CommandIndex.execute(first_command)
    second_command = ['L', '2', '2', 'A']
    CommandIndex.execute(second_command)
    print_command = ['S']
    expect{ CommandIndex.execute(print_command) }.to output("OA\nOO\n").to_stdout
  end

  it "'?': displays help" do
    command = ['?']
    help = "Command formats:\n"\
            "'I M N': sets up a new canvas\n"\
            "'S': prints out a canvas\n"\
            "'L X Y C': colours a coordinate\n"\
            "'C': clears the canvas\n"\
            "'V X Y1 Y2 C': colours a vertial segment\n"\
            "'H X1 X2 Y C': colours a horizontal segment\n"
    expect{ CommandIndex.execute(command) }.to output(help).to_stdout
  end

  it "'V X Y1 Y2 C': colours a vertial segment" do
    first_command = ['I', '3', '3']
    CommandIndex.execute(first_command)
    second_command = ['V', '1', '1', '3', 'A']
    CommandIndex.execute(second_command)
    print_command = ['S']
    expect{ CommandIndex.execute(print_command) }.to output("AOO\nAOO\nAOO\n").to_stdout
  end

  it "'H X1 X2 Y C': colours a horizontal segment" do
    first_command = ['I', '3', '3']
    CommandIndex.execute(first_command)
    second_command = ['H', '1', '3', '1', 'A']
    CommandIndex.execute(second_command)
    print_command = ['S']
    expect{ CommandIndex.execute(print_command) }.to output("OOO\nOOO\nAAA\n").to_stdout
  end

  it "'C': clears the canvas" do
    first_command = ['I', '3', '3']
    CommandIndex.execute(first_command)
    second_command = ['H', '1', '3', '1', 'A']
    CommandIndex.execute(second_command)
    clear_command = ['C']
    CommandIndex.execute(clear_command)
    print_command = ['S']
    expect{ CommandIndex.execute(print_command) }.to output("OOO\nOOO\nOOO\n").to_stdout
  end
end
