require 'sinatra/base'

class Battle < Sinatra::Base

   get '/home' do 
    'Hello battle!'
   end 

end
