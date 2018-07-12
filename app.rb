require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end 
  
  post '/' do
    @pl_obj = PigLatinizer.new(params[:users_word])
    
    erb :results
  end
  
end