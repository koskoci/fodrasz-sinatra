require 'sinatra/base'
require 'padrino-helpers'
require 'padrino-mailer'

class Fodrasz < Sinatra::Base
  register Padrino::Helpers
  register Padrino::Mailer

  set :protect_from_csrf, true
  set :delivery_method, :smtp => {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => 'stadionok.fodraszat',
    :user_name            => 'stadionok.fodraszat.dev',
    :password             => '***REMOVED***',
    :authentication       => 'plain',
    :enable_starttls_auto => true
  }

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
    email(:from => "noreply@stadionok.fodraszat.dev", :to => "***REMOVED***", :subject => "Successfully Registered!", :body => "Test Body")
  end
end