require_relative './canvas'

class CommandIndex
  def self.execute(input_command)
    command = input_command[0]
    x_coordinate = input_command[1].to_i
    y_coordinate = input_command[2].to_i
    colour = input_command[3]
    
    case command[0]
    when 'I'
      @canvas = Canvas.new(x_coordinate, y_coordinate)
      @canvas.populate_canvas
    when 'S'
      @canvas.print
    when 'L'
      @canvas.colour_coordinate(x_coordinate - 1, y_coordinate - 1, colour)
    when '?'
      printHelp
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
