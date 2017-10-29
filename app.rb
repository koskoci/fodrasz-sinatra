require 'sinatra'

get '/' do
  'Hello world!'
end

get '/contact_form' do
  erb :contact_form
end