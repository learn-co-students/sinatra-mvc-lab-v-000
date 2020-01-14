require_relative 'config/environment'

class App < Sinatra::Base
  

  post '/piglatinizer' do 
    @text=params[:user_input]
    @piglatinizer= PigLatinizer.new 
    erb :piglatinizer 
  end 
  
  
  
end