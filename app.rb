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
      erb :play
   end

   get '/confirmation' do 
      erb :attacked
   end 

end
