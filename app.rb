require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/' do 
    user_input = params[:user_input]
    
    @text_to_latinize = PigLatinizer.new(user_input)
    
    erb :results 
  end
end