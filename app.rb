require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @analyzed_text = params[:user_phrase]
    
    erb :piglatin_results
  end
end
