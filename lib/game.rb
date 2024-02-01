class Game #c'est le jeu. Elle initialise tout, lance une partie (qui se termine avec une victoire ou un nul), permet de jouer un tour, de chercher si la partie est finie, etc.
attr_accessor :player_x, :player_o, :board_game
  def initialize(player_x_name,player_o_name)
    @player_x = Player.new(player_x_name,"x")
    @player_o = Player.new(player_o_name,"o")
    @board_game = Board.new
  end

  def player_x_is_playing
    puts "== autour de << #{@player_x.name} >> de jouer =="
  end

  def player_o_is_playing
    puts "== autour de << #{@player_o.name} >> de jouer =="
  end

  def menu
    
    puts "-- Quelle action veux tu faire ? --"
    puts "  7|8|9"
    puts "  4|5|6"
    puts "  1|2|3"
    print "> "
  end

  def menu_choice(player)
    
    user_answer = gets.chomp.to_i
    case user_answer
      when 7
        @board_game.place_pawn("A1",player.pawn)
      when 4
        @board_game.place_pawn("A2",player.pawn)
      when 1
        @board_game.place_pawn("A3",player.pawn)
      when 8
        @board_game.place_pawn("B1",player.pawn)
      when 5
        @board_game.place_pawn("B2",player.pawn)
      when 2
        @board_game.place_pawn("B3",player.pawn)
      when 9
        @board_game.place_pawn("C1",player.pawn)
      when 6
        @board_game.place_pawn("C2",player.pawn)
      when 3
        @board_game.place_pawn("C3",player.pawn)
    end
  end

  def is_still_ongoing? #le jeu continue s'il n'y a aucune gagnant et que le plateau n'est pas remplit
      if !board_game.is_full? && !board_game.is_there_a_winner?
        true
      end
  end

  def show_board
    puts "Voici l'état du plateau :"
    @board_game.board_stat

  end


  def end_game(winner) #fin de la partie
    
    if winner
      puts("*** ^^ BRAVO, >> #{winner.name} << A GAGNE ! ^^ ***")
      
    else board_game.is_full?
      puts(">>> DRAW <<<")
    end
  end

end #end of class