require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end 
  
  post '/' do
    @pl_obj = PigLatinizer.new(params[:user_phrase])
    
    erb :results
  end
  
end