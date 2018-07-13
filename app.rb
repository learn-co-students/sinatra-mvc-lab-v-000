require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end 
  
  post '/' do
    @user_input = params[:user_text]
    
    erb :pig_latinized
  end 
  
end