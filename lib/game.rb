require_relative './player.rb'

class Game

  attr_accessor :player_one, :player_two, :players, :current_turn

  def initialize(param1 = "", param2 = "")
    @player_one = Player.new(param1)
    @player_two = Player.new(param2)
    @players = [@player_one, @player_two]
    @current_turn = @player_one.name
  end

  def attack(defender)
      defender.hp -= Player::ATTACK_VALUE
  end

  def switch_turns
    @current_turn == @player_one.name ? @current_turn = @player_two.name : @current_turn = @player_one.name
  end


end
