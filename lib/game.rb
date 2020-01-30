class Game
  attr_accessor :current_player, :status, :board, :array_players

  def initialize
    @player1 = Player.new("Jean", "X")
    @player2 = Player.new("Jeannette", "O")
    @array_players = [@player1, @player2]

    @board = Board.new

    @status = "on going"

    @current_player = @player1
  end

  def turn
    @board.show_board
    @board.play_turn
  end
end
