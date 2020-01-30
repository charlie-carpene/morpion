class Game
  attr_accessor :current_player, :status, :board, :array_players

  def initialize

    @player1 = Player.new("Jean", "X")
    @player2 = Player.new("Jeannette", "O")
    @array_players = [@player1, @player2]

    @board = Board.new

    @status = "on going"

    @current_player = @player1
    @rand_num = rand(2)
  end

  def start
    puts "Bienvenue dans le  morpion"
    puts "Chacun son tour vous choisirez une case (de A1 à C3)"
    puts "Objectif : aligner 3 cases  pareils"

    puts "C'est #{@array_players[@rand_num].name} qui commence !" #choisi un joueur aléatoire pour commencer la partie
    @board.show_board # affiche le plateau
  end

  def turn
    @rand_num
    @board.show_board # affiche le plateau
    if @rand_num % 2 == 0 #en fonction du nombre aléatoire, designe le joueur qui va jouer
      puts "A toi de jouer #{@array_players[0].name} (ex : A1)"
      print "> "
      @id_beeing_played = gets.chomp
      @board.board_array.each do |board_case|
        if board_case.id == @id_beeing_played
          @board.board_array << board_case.value = @array_players[0].value
        end
      end
    else
      puts "A toi de jouer #{@array_players[1].name} (ex : A1)"
      print "> "
      @id_beeing_played = gets.chomp
      @board.board_array.each do |board_case|
        if board_case.id == @id_beeing_played
          @board.board_array << board_case.value = @array_players[1].value
        end
      end

    end
    @rand_num = @rand_num + 1
  end

  def whos_turn

  end
end
