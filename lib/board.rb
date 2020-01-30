require 'player'

class Board
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

  def victory
    puts "En vrai j'en suis pas la pour l'instant.. Déso :s"
  end
end
