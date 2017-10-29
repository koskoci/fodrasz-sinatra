require 'sinatra/base'
require 'padrino-helpers'

class Fodrasz < Sinatra::Base
  register Padrino::Helpers
  set :protect_from_csrf, true

  get '/' do
    'Hello world!'
  end

  get '/contact_form' do
    haml :contact_form
  end
end