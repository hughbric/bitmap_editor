require_relative './command_index'

class Editor
  VALID_COMMANDS = [ 'I', 'C', 'L', 'V', 'H', 'F', 'W', 'S', 'X', '?' ]

  def initialize
    puts "Welcome. Please enter a command:"
  end

  def run
    loop do
      input = gets.chomp
      command = format(input)

      if check_valid(command)
        CommandIndex.execute(command)
      end

      if command[0] == 'X'
        break
      end
    end
  end

  private

  def format(input)
    input.upcase.split(' ')
  end

  def check_valid(command)
    if !VALID_COMMANDS.include?(command[0])
      puts "Please enter a valid command, or '?' for help:"
      return false
    end

    if command.length > 5
      puts 'The command entered is too long, try again:'
      return false
    end

    if command[1].to_i > 250 || command[2].to_i > 250
      puts 'The canvas size limit is 250'
      return false
    end
    true
  end
end
