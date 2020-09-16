require 'player'

describe Player do
  player_one = Player.new("Sam")

  it 'returns the name of a player' do
    expect(player_one.name).to eq "Sam"
  end

  describe '#attack' do
    it 'responds to #attack with one variable' do
      expect(subject).to respond_to(:attack).with(1).argument
    end

    it 'takes away 10hp from the opposing player' do
      player_two = Player.new("Player_two")
      expect{ subject.attack(player_two) }.to change { player_two.hp }.from(100).to(90)
    end

  end

end