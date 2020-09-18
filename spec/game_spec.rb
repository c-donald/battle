require 'game'
require 'player'

describe Game do
  p1 = Player.new("p1")
  p2 = Player.new("p2")
  subject = Game.new(p1, p2)

  it 'responds to attack' do
    expect(subject).to respond_to(:attack)
  end

  describe '#attack' do
    it 'removes 10 HP from a player' do
      expect { subject.attack(p1) }.to change { p1.hp }.from(Player::HP).to(Player::HP - Player::ATTACK_VALUE)
    end
  end
end
