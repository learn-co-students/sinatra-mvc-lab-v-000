require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @input = params[:user_phrase]
    @piglatin = PigLatinizer.new.piglatinize(@input)
    erb :results
  end 
end