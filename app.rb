require_relative 'config/environment'
# test moving this to environment
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
#==================routes================== 
  # root
#------------------------------------------ 
  get "/" do
  	erb :user_input
  end
 
  post '/piglatinize' do
    input = PigLatinizer.new 
    @phrase = input.to_pig_latin(params[:user_phrase])
    
    erb :ans
  end
#========================================== 
end