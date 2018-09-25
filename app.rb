require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = params[:user_phrase]
    word = PigLatinizer.new
    @pig_latinized = word.piglatinize(phrase)

    erb :pig_latin
  end
end