require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "HELLO WORLD"
end

get '/secret' do
  "This is a secret!"
end

get '/othersecret' do
  "This is secret as well"
end

get '/anotherfile' do
  "add another file"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
