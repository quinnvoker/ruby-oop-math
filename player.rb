class Player
  attr_reader :name

  def initialize(name, life)
    @name = name
    @life = life
    @max_life = life
  end

  def damage
    @life -= 1
  end

  def dead?
    @life <= 0
  end

  def stat_string
    "#{@life}/#{@max_life}"
  end
end