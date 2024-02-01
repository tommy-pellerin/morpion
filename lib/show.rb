class Show #cette classe sera une sorte de view. Elle affichera l'état du plateau de jeu à un instant T.

  def show_board(board)
    system "clear"
    puts "  #{board.cellsA1.cell_content}|#{board.cellsB1.cell_content}|#{board.cellsC1.cell_content}"
    puts "  #{board.cellsA2.cell_content}|#{board.cellsB2.cell_content}|#{board.cellsC2.cell_content}"
    puts "  #{board.cellsA3.cell_content}|#{board.cellsB3.cell_content}|#{board.cellsC3.cell_content}"
  end
  
end #end of class