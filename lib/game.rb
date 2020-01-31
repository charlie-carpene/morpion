class Game
  attr_accessor :current_player, :status, :board, :array_players

  def initialize

    @player1 = Player.new("Jean", "X")
    @player2 = Player.new("Jeannette", "O")
    @array_players = [@player1, @player2]

    @board = Board.new

    @status = "on going"

    @current_player = @player1
    @rand_num = rand(2) #initialize a random number (to choose a player for starting the game & to go from onoe player to an other)
  end

  def start
    puts "Bienvenue dans le  morpion"
    puts "Chacun son tour vous choisirez une case (de A1 à C3)"
    puts "Objectif : aligner 3 cases  pareils"

    puts "C'est #{@array_players[@rand_num].name} qui commence !" #pic a random player to start the game
    @board.show_board # show the board
  end

  def turn
    @rand_num
    @board.show_board
    if @rand_num % 2 == 0 #depending on the random number, shows who needs to play
      puts "A toi de jouer #{@array_players[0].name} (ex : A1)"
      print "> "
      @id_beeing_played = gets.chomp #the the input of the player
      @board.board_array.each do |board_case| #go throught the board to get each board_case value
        if board_case.id == @id_beeing_played #check if the input of the player is similar to one of the board_case value
          @board.board_array << board_case.value = @array_players[0].value #change the value of the board_case
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
    @rand_num = @rand_num + 1 #add +1 to the random number to change player for the next turn
  end
end
