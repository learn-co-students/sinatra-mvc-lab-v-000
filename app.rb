require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @phrase = params["user_phrase"]
    pigLatin = PigLatinizer.new()
    pigLatin.to_pig_latin(@phrase)
  #  erb :piglatinize
  end

end
