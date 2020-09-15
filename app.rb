require 'sinatra'


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

get '/cat' do 
 '<img src="http://bit.ly/1eze8aE" style="border: dashed red;">'
end

set :session_secret, 'super secret'