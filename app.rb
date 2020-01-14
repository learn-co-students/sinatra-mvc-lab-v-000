require_relative 'config/environment'

class App < Sinatra::Base
  

  post '/piglatinizer' do 
  @user_phrase = PigLatinizer.new.to_piglatin(params[:user_phrase])
  erb :results
  end 
  
  
  
end