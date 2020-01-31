require 'player'

class Board
  attr_accessor :board_array

  def initialize
    @board_array = [] #set the board array and add 9 board cases to make the board
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

  def show_board #when asked, give the updated board to know where the players are at
    puts "   | A | B | C |"
    puts " 1 | #{board_array[0].value} | #{board_array[1].value} | #{board_array[2].value} |"
    puts " 2 | #{board_array[3].value} | #{board_array[4].value} | #{board_array[5].value} |"
    puts " 3 | #{board_array[6].value} | #{board_array[7].value} | #{board_array[8].value} |"
  end

  def victory
    puts "Sorry bro, that's not ready yet"
  end
end
