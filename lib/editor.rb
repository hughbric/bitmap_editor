class Editor
VALID_COMMANDS = [ 'I', 'C', 'L', 'V', 'H', 'F', 'W', 'S', 'X', '?' ]

  def initialize
    puts "Welcome. Please enter a command:"
  end

  def run
    input = gets.chomp
    command = format(input)
    check_valid(command)
  end

  private

  def format(input)
    input.split(' ')
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
    true
  end
end
