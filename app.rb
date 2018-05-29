require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatin = PIGLATINIZER.piglatinize(params[:user_phrase].strip)
    erb :pig_latin
  end
end