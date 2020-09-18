require_relative './player.rb'

class Game

  attr_accessor :player_one, :player_two, :players, :current_turn, :other_player

  def initialize(player_1, player_2)
    @player_one = player_1
    @player_two = player_2
    @players = [@player_one, @player_two]
    @current_turn = @players[0]
    @other_player = @players[1]
  end
 
  def attack(defender)
      defender.hp -= Player::ATTACK_VALUE
  end

  def switch_turns
    @current_turn == @players[0] ? @current_turn = @players[1] : @current_turn = @players[0]
  end

  def other
    @other_player == @players[0] ? @other_player = @players[1] : @other_player = @players[0]
  end

  def ko(defender)
    defender.hp -= Player::HP
  end

  def knockout?
    @player_one.hp == 0 || @player_two.hp == 0
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

end
