require 'sinatra'
require 'shotgun'

get '/' do
    "HELLO WORLD"
end

get '/secret' do
    "This is a secret!"
end

get '/othersecret' do
    "This is another secret"
end

set :session_secret, 'super secret'