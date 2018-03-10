require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatin = PigLatinizer.new
    @user_phrase = params[:user_phrase]
    @piglatinize = piglatin.to_pig_latin(@user_phrase)
    erb :piglatinize
  end
end
