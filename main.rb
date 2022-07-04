require './game'
require './match'

game = Game.new
match = Match.new

while game.p1.lives != 0 && game.p2.lives != 0 do
  puts game.new_round 
  game.end_round match.new_question
  puts " "
end

puts "----- GAME OVER -----"
puts "Player 1 wins with a score of #{game.p1.lives}/3" if game.p2.lives == 0
puts "Player 2 wins with a score of #{game.p2.lives}/3" if game.p1.lives == 0
puts "----- GOOD BYE -----"