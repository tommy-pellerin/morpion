class Show #cette classe sera une sorte de view. Elle affichera l'état du plateau de jeu à un instant T.

  def initialize(cellsA1)
    @A1 = cellsA1
  end

  def show_stat
    # system "clear"
    puts "Voici l'état du plateau :"
    puts "{@A1.content}|@A2|@A3"
    puts "@B1|@B2|@B3"
    puts "@C1|@C2|@C3"
  end
  
  

end #end of class