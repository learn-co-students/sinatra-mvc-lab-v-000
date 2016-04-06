require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do
    @script = params[:user_phrase]
    @words = PigLatinizer.new
    erb :piglatin
  end

  get '/piglatinize' do
    erb :piglatin
  end

  

end