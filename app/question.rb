class Question

  attr_accessor(:val1, :val2, :answer)

  def initialize(askingPlayer)
    @askingPlayer = askingPlayer
    @prng = Random.new
    @val1 = @prng.rand(1..20)
    @val2 = @prng.rand(1..20)
    @answer = @val1 + @val2
    # p @answer.class
  end

end