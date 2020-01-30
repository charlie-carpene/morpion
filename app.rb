require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'board_case'
require 'board'
require 'player'
require 'game'

binding.pry
puts "end of file"
