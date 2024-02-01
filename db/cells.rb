class Cells #c'est une case. Il devrait y avoir 9 instances de cette classe lors d'une partie.
attr_accessor :cell_position, :cell_content

  def initialize(position,content)
    @cell_position = position
    @cell_content = content
  end

  def change_content
    
    case @cell_position
      when "A1"
         @cell_content = x
      when "A2"
        @cell_content = x
    end
  end

end #end of class