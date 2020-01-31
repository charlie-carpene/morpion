require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'board_case'
require 'board'
require 'player'
require 'game'

new = Game.new #start a new game
new.start #initialise to know which player starts
new.turn #start a turn
new.turn #start a turn

puts "end of the game"
