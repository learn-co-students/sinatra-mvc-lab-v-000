require_relative 'config/environment'
require_relative 'models/piglatinize.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @str = params[:user_phrase]
    @translated = PigLatinizer.new

    erb :piglatinize
  end
end
