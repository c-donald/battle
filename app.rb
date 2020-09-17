require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

   get '/' do 
    'Testing infrastructure working!'
   end 

   get '/names' do
      erb :index
   end

   post '/names' do
      $game = Game.new(params[:player_one], params[:player_two])
      redirect '/battle'
   end

   get '/battle' do
      $game.switch_turns
      erb :play
   end

   get '/confirmation_two' do 
      erb :attacked_two
   end

   get '/confirmation_one' do
      erb :attacked_one
   end

end
