require './game'
require './player'
require './question'

puts "Player1, enter your name: "
player1 = $stdin.gets.chomp

puts "Player2, enter your name: "
player2 = $stdin.gets.chomp


new_game = Game.new(player1,player2)
new_game.start
