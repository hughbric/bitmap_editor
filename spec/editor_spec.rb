require 'editor'

describe Editor do
  it 'outputs an error message if command length too long' do
    allow(subject).to receive(:gets).and_return("I 1 2 3 4 5 6\n", "X\n")
    expect{ subject.run }.to output("The command entered is too long, try again:\n").to_stdout
  end

  it 'outputs an error message if invalid command' do
    allow(subject).to receive(:gets).and_return("R 2 2\n", "X\n")
    expect{ subject.run }.to output("Please enter a valid command, or '?' for help:\n").to_stdout
  end

  it 'outputs an error message canvas size > 250' do
    allow(subject).to receive(:gets).and_return("I 251 251\n", "X\n")
    expect{ subject.run }.to output("The canvas size limit is 250\n").to_stdout
  end
end
