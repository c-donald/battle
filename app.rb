require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

   before do
      @game = Game.instance
   end

   get '/' do 
     redirect '/names'
   end 

   get '/names' do
      erb :index
   end

   post '/names' do
      player_1 = Player.new(params[:player_one])
      player_2 = Player.new(params[:player_two])
      @game = Game.create(player_1, player_2)
      redirect '/battle'
   end

   get '/battle' do
      if @game.knockout? 
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
