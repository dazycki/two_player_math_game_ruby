require './match'
require './player'

class Game
  attr_reader :p1
  attr_reader :p2

  def initialize
    @round = 0
    @selected_player = 1
    @p1 = Player.new
    @p2 = Player.new
  end

  
  def new_round
    @round += 1

    puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
    puts "----- ROUND: #{@round} -----"

    if @round % 2 == 0 
      @selected_player = 2
    else 
      @selected_player = 1
    end
    
    return "Player #{@selected_player}: "
  end

  def end_round(answer)
    if answer
      puts "YES! You are correct."
    else
      puts "NO! You are incorrect."
      @p1.subtract_life if @selected_player == 1
      @p2.subtract_life if @selected_player == 2
    end
  end

end