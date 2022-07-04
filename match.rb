class Match
  
  def new_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    puts "What does #{@num1} plus #{@num2} equal?"
    @answer = gets.chomp.to_i
    @answer == @num1 + @num2 ? true : false 
  end

end