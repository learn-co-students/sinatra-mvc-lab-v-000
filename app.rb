require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    phrase = "#{params[:user_phrase]}"
    phrase = PigLatinizer.new()

    # phrase = "#{params[:user_phrase]}"
    # return PigLatinizer.piglatinize(phrase)
  end

  post '/piglatinize' do
  end
end
