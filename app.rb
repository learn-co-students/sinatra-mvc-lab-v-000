
require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @new_phrase = params[:user_phrase]
    new_instance = PigLatinizer.new
    @pig_latin_words = new_instance.to_pig_latin(@new_phrase)
    erb :pig_latinize
  end
end
