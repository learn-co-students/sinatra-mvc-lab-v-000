require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @PigLatinizer = PigLatinizer.new
    @user_input = @PigLatinizer.piglatinize(params[:user_phrase])

    erb :display_piglatin
  end 
  
  
end