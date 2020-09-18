require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

   get '/' do 
     redirect '/names'
   end 

   get '/names' do
      erb :index
   end

   post '/names' do
      $game = Game.new(params[:player_one], params[:player_two])
      redirect '/battle'
   end

   get '/battle' do
      if $game.knockout? 
        redirect '/knockout'
      else
        erb :play
      end
   end

   get '/attack' do
      erb :attack
   end

   get '/knockout' do
     erb :knockout   
   end

   get '/ko' do
     erb :instant_ko   
   end

end
