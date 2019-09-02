require 'editor'
require 'canvas'

describe Editor do
  it 'outputs an error message if command length too long' do
    editor = Editor.new
    allow(editor).to receive(:gets).and_return('I 2 2 4 4 4')
    expect{ editor.run }.to output("The command entered is too long, try again:\n").to_stdout
  end
end
