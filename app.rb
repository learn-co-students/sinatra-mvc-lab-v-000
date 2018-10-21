require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end  
  
  post '/piglatinize' do
    @user_instance = PigLatinizer.new
    @user_words = params[:user_phrase]
    
    erb :pig_results
  end
    
end