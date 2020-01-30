require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'board_case'
require 'board'
require 'player'
require 'game'

new = Game.new
new.start

binding.pry
puts "end of file"
