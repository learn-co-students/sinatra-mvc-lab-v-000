require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    new_params = params[:user_phrase]
    piglatin = PigLatinizer.new
    @word = piglatin.to_pig_latin(new_params)
    erb :results
  end


end
