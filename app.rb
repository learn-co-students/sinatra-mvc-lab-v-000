require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
     latin = PigLatinizer.new
     @piglatinized = latin.to_pig_latin(params[:user_phrase])
    erb :user_output
  end
end

#OLD CODE:
# post "/piglatinize" do
 #    @piglatin = Piglatinizer.new.to_pig_latin(params[:user_phrase])
 #
 #    erb :user_output
 #  end
