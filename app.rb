require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
$:.unshift File.expand_path("./../db", __FILE__)
require 'game'
require 'player'
require 'board'
require 'cells'
require 'show'



class App #cette classe va nous permettre de lancer le jeu. Elle va faire une boucle infinie de parties (on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game.
  
  def perform
    #Initialisation du jeu
    caractere = "|     Bienvenu dans POO des champions, un morpion     |"

    puts "-" * caractere.length
    puts caractere
    puts "-" * caractere.length
    puts "Appui sur --> ENTRER <-- si tu es pret à jouer \n"
    gets.chomp

    #initialiser les joueurs
    puts "Rentre le nom du joueur qui prendre le 'x' :"
    print "> "
    player_x_name = gets.chomp #demande le nom du joueur
    puts "Rentre le nom du joueur qui prendre le 'o' :"
    print "> "
    player_o_name = gets.chomp #demande le nom du joueur

    my_game = Game.new(player_x_name,player_o_name) #créer un onject Game avec le nom de l'utilisateur qui sera donné à @player_x
    
    my_game.show_board #montre l'état initiale du plateau

    while my_game.is_still_ongoing?

      #joueur_x joue
      my_game.player_x_is_playing
      my_game.menu
      my_game.menu_choice(my_game.player_x) #executer les actions
      my_game.show_board #montre l'état du plateau
      if my_game.board_game.is_there_a_winner? == true
        winner = my_game.player_x
        break
      end

      #joueur_0 joue
      my_game.player_o_is_playing #changement de joueur
      my_game.menu
      my_game.menu_choice(my_game.player_o) #executer les actions
      my_game.show_board
      if my_game.board_game.is_there_a_winner? == true
        winner = my_game.player_o
        break
      end

    end

    my_game.end_game(winner)

    # binding.pry

  end
  

end #end of class

App.new.perform
