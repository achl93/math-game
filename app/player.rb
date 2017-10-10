class Player

  attr_accessor(:lifeCount)

  def initialize(playerNumber)
    @playerNumber = playerNumber
    @lifeCount = 3
  end

  def wrong
    puts 'Seriously? No!'
  end

  def right
    puts 'YES! You are correct.'
  end

  def minusLife
    @lifeCount -= 1
    # p @lifeCount
  end 

end