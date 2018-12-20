require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    word = PigLatinizer.new
    user_phrase = params[:user_phrase]
    @latinized_word = word.piglatinize(user_phrase)

    erb :pig_latin
  end
end
