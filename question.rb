class Question
  def initialize
    @a = rand(20) + 1
    @b = rand(20) + 1
  end

  def is_answer?(answer)
    @a + @b == answer
  end

  def to_s
    "What does #{@a} plus #{@b} equal?"
  end
end