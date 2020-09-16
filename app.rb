require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

   get '/' do 
    'Testing infrastructure working!'
   end 

   get '/names' do
      erb :index
   end

   post '/names' do
      $player_one = Player.new(params[:player_one])
      $player_two = Player.new(params[:player_two])
      erb :play
   end

   get '/confirmation' do 
      erb :attacked
   end 

end
