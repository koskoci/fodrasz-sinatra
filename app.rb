require 'sinatra/base'
require 'padrino-helpers'
require 'padrino-mailer'

class Fodrasz < Sinatra::Base
  register Padrino::Helpers
  register Padrino::Mailer

  set :protect_from_csrf, true

  before do
    I18n.locale = :hu
  end

  get '/' do
    send_file File.expand_path('index.html', './public')
  end

  get '/contact_form' do
    haml :contact_form
  end

  post '/email' do
    "Email should be sent at this point."
  end
end