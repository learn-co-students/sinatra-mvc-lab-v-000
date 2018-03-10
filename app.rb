require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piggy = PigLatinizer.new
    @piglatinized_phrase = piggy.to_pig_latin(params[:user_phrase])
    erb :piglatin
  end

end