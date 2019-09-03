require_relative './canvas'

class CommandIndex
  def self.execute(command)
    @command = command
    
    case command[0]
    when 'I'
      @canvas = Canvas.new(command[1].to_i, command[2].to_i)
    when 'S'
      @canvas.print
    end
  end
end
