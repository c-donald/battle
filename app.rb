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

end
