require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    words = params[:user_phrase]
    @piggy = PigLatinizer.new(words)
    erb :display
  end
end
