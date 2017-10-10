require './player.rb'
require './question.rb'
require './turn.rb'
require './game.rb'

class Main

  game = Game.new
  game.startGame
  puts 'Game over!'

end