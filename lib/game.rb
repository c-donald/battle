require 'player'

class Game

  attr_accessor :player_one, :player_two

  def initialize(param1 = "", param2 = "")
    @player_one = Player.new(param1)
    @player_two = Player.new(param2)
  end

  def attack(defender)
      defender.hp -= Player::ATTACK_VALUE
  end

end