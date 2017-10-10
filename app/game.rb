class Game

  def initialize
    @p1 = Player.new(1)
    @p2 = Player.new(2)
    @currentPlayer = 1
    @otherPlayer = 2
    @turn = Turn.new(@otherPlayer, Question.new(@otherPlayer))
    # p @p1
  end

  def startGame
    while @p1.lifeCount > 0 && @p2.lifeCount > 0
      @turn.askQuestion
      userInput = gets.chomp
      # p @turn.question.answer
      # p userInput.class
      if userInput.to_i == @turn.question.answer && @currentPlayer == 1
        @p1.right
      elsif userInput.to_i != @turn.question.answer && @currentPlayer == 1
        @p2.wrong
        @p1.minusLife
        # p @p1.lifeCount
      end
      if userInput.to_i == @turn.question.answer && @currentPlayer == 2
        @p2.right
      elsif userInput.to_i != @turn.question.answer && @currentPlayer == 2
        @p1.wrong
        @p2.minusLife
        # p @p2.lifeCount
      end
      if @currentPlayer == 2
        @currentPlayer -= 1
        @otherPlayer += 1
      else
        @currentPlayer += 1
        @otherPlayer -= 1
      end
      puts "Player 1: #{@p1.lifeCount}/3 | Player 2: #{@p2.lifeCount}/3"
      @turn = Turn.new(@otherPlayer, Question.new(@otherPlayer))
    end
  end

end