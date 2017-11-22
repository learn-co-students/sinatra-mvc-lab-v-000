require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin_to_post = PigLatinizer.new.to_pig_latin(params["user_phrase"])
    erb :piglatin
  end
end
