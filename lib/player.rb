class Player #ce sont les joueurs. Il doit y avoir 2 instances de cette classe lors d'une partie.
  attr_accessor :name, :pawn

  def initialize(name,pawn)
    @name = name
    @pawn = pawn #x ou o
    
  end

end #end of class