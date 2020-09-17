class Player

  HP = 100
  ATTACK_VALUE = 10

  attr_reader :name
  attr_accessor :hp
  
  def initialize(name="", hp = HP)
    @name = name
    @hp = hp
  end

end