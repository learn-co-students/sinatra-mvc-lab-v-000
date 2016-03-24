require_relative 'config/environment'

class App < Sinatra::Base

  #GET request for the index action
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatin = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    
    erb :piglatin
  end

end