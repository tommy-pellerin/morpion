class Board #c'est le plateau. Il doit y avoir une instance de cette classe lors d'une partie.
  attr_accessor :cellsA1, :cellsA2, :cellsA3, :cellsB1, :cellsB2, :cellsB3, :cellsC1, :cellsC2, :cellsC3
  @@number_of_turn = 0 #comptera le nombre de partie joué, s'il n'y a pas de vainceur au bout de 9 partie, le jeu s'arret avec un draw

    def initialize
      @cellsA1 = Cells.new('A1',"_")
      @cellsA2 = Cells.new('A2',"_")
      @cellsA3 = Cells.new('A3'," ")
      @cellsB1 = Cells.new('B1',"_")
      @cellsB2 = Cells.new('B2',"_")
      @cellsB3 = Cells.new('B3'," ")
      @cellsC1 = Cells.new('C1',"_")
      @cellsC2 = Cells.new('C2',"_")
      @cellsC3 = Cells.new('C3'," ")
    end

    def place_pawn(position,pawn)
      @@number_of_turn += 1
      case position
        when "A1"
          @cellsA1.cell_content = pawn
        when "A2"
          @cellsA2.cell_content = pawn
        when "A3"
          @cellsA3.cell_content = pawn
        when "B1"
          @cellsB1.cell_content = pawn
        when "B2"
          @cellsB2.cell_content = pawn
        when "B3"
          @cellsB3.cell_content = pawn
        when "C1"
          @cellsC1.cell_content = pawn
        when "C2"
          @cellsC2.cell_content = pawn
        when "C3"
          @cellsC3.cell_content = pawn
      end
    end

    def is_full? # la plateau est remplit si on a fait 9 tours
      if @@number_of_turn == 9
        true
      end
    end

    def is_there_a_winner? # il y a un gagnant si 1 des 8 conditions est remplis
      if @cellsA1.cell_content == @cellsA2.cell_content  && @cellsA2.cell_content == @cellsA3.cell_content && @cellsA3.cell_content != "_"|| @cellsB1.cell_content == @cellsB2.cell_content && @cellsB2.cell_content == @cellsB3.cell_content && @cellsB3.cell_content != "_" || @cellsC1.cell_content == @cellsC2.cell_content && @cellsC2.cell_content == @cellsC3.cell_content && @cellsC3.cell_content != "_"
        true
      elsif @cellsA1.cell_content == @cellsB1.cell_content && @cellsB1.cell_content == @cellsC1.cell_content && @cellsC1.cell_content != "_" || @cellsA2.cell_content == @cellsB2.cell_content && @cellsB2.cell_content == @cellsC2.cell_content && @cellsC2.cell_content != "_" || @cellsA3.cell_content == @cellsB3.cell_content && @cellsB3.cell_content == @cellsC3.cell_content && @cellsA3.cell_content != " "
        true
      elsif @cellsA1.cell_content == @cellsB2.cell_content && @cellsB2.cell_content == @cellsC3.cell_content && @cellsC3.cell_content != "_" || @cellsA3.cell_content == @cellsB2.cell_content && @cellsB2.cell_content == @cellsC1.cell_content && @cellsC1.cell_content != "_"
        true
      end
    end

    # def board_stat #j'ai tout transféré dans la class SHOW
      
    #   puts "  #{@cellsA1.cell_content}|#{@cellsB1.cell_content}|#{@cellsC1.cell_content}"
    #   puts "  #{@cellsA2.cell_content}|#{@cellsB2.cell_content}|#{@cellsC2.cell_content}"
    #   puts "  #{@cellsA3.cell_content}|#{@cellsB3.cell_content}|#{@cellsC3.cell_content}"
    # end

end #end of class