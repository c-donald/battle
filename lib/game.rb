require 'player'

class Game

  def attack(defender)
      defender.hp -= Player::ATTACK_VALUE
  end

end