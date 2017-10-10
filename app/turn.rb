class Turn

  attr_accessor(:question)

  def initialize(askingPlayer, question)
    @askingPlayer = askingPlayer
    @question = question
  end

  def askQuestion
    puts "Player #{@askingPlayer} asks: What is #{@question.val1} + #{@question.val2}?"
  end
end