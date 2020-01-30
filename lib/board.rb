class Board < BoardCase
  attr_accessor :board_array
  #board_array = Array.new

  def initialize
    @board_array = []
    @board_array << BoardCase.new("A1")
    @board_array << BoardCase.new("A2")
    @board_array << BoardCase.new("A3")
    @board_array << BoardCase.new("B1")
    @board_array << BoardCase.new("B2")
    @board_array << BoardCase.new("B3")
    @board_array << BoardCase.new("C1")
    @board_array << BoardCase.new("C2")
    @board_array << BoardCase.new("C3")
  end

  def show_board
    puts "   | A | B | C |"
    puts " 1 | #{board_array[0].value} | #{board_array[1].value} | #{board_array[2].value} |"
    puts " 2 | #{board_array[3].value} | #{board_array[4].value} | #{board_array[5].value} |"
    puts " 3 | #{board_array[6].value} | #{board_array[7].value} | #{board_array[8].value} |"
  end

  def play_turn
    @whos_turn = rand(1)
    if @whos_turn % 2 == 0
      puts "#{player1.name} à toi de jouer (ex : A1) ?" #ici j'aimerai bien afficher le nom de mon joueur mais jsais pas comment faire pour aller le chercher ^^ Je suis en train de passer par une méthode pour voir ce que ca donne mais si on peut le récupérer direct c'est l'idéal :)
      print "> "
      @id_beeing_played = gets.chomp

      board_array.each do |board_case|
        if board_case.id == @id_beeing_played
          puts @board_array << board_case.value = "X"
        end
      end
    else
    #  puts  "#{player2} ou veux-tu jouer ?"
    end
  end
end
