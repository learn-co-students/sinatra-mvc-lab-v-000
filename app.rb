require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = params[:user_phrase]
    pg = PigLatinizer.new

    @jumbled = pg.to_pig_latin(phrase)

    erb :result
  end
end
