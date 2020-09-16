require 'sinatra/base'

class Battle < Sinatra::Base

   get '/' do 
    'Testing infrastructure working!'
   end 

   get '/names' do
      erb :index
   end

   post '/names' do
      @player_one = params[:player_one]
      @player_two = params[:player_two]
      erb :play
   end

   get '/confirmation' do 
      "You've attacked Player 2!"
   end 

end
