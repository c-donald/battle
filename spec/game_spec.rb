require 'game'
require 'player'

describe Game do

  it 'responds to attack' do
    expect(subject).to respond_to(:attack)
  end

  describe '#attack' do
    it 'removes 10 HP from a player' do
      defender = Player.new("T")
      expect { subject.attack(defender) }.to change { defender.hp }.from(Player::HP).to(Player::HP - Player::ATTACK_VALUE)
    end
  end

  describe '#switch_turns' do
    it 'switches the value of @current_turn' do
      game = Game.new("1", "2")
      game.switch_turns
      expect(game.current_turn).to eq "2"
    end
  end

end
