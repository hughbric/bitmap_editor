require_relative './canvas'

class CommandIndex
  def self.execute(input_command)
    command = input_command[0]
    x_input = input_command[1].to_i
    y_input = input_command[2].to_i
    colour = input_command[3]
    
    case command[0]
    when 'I'
      @canvas = Canvas.new(x_input, y_input)
      @canvas.populate_canvas
    when 'S'
      @canvas.print
    when 'L'
      @canvas.colour_coordinate(x_input - 1, y_input - 1, colour)
    when '?'
      printHelp
    when 'V'
      x_coord = input_command[1].to_i
      y_one_input = input_command[2].to_i
      y_two_input = input_command[3].to_i
      v_colour = input_command[4]
      @canvas.colour_vertical(x_coord - 1, y_one_input - 1, y_two_input - 1, v_colour)
    end
  end

  def self.printHelp
    help = "Command formats:\n"\
          "'I M N': sets up a new canvas\n"\
          "'S': prints out a canvas\n"\
          "'L X Y C': colours a coordinate"
    puts help
  end
end
