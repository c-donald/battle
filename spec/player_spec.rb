require 'player'

describe Player do
  player_one = Player.new("Sam")

  it 'returns the name of a player' do
    expect(player_one.name).to eq "Sam"
  end

end