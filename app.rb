require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @translator = PigLatinizer.new
    @text = params[:user_phrase]
    erb :piglatinized
  end
end