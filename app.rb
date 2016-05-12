require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do 
    erb :user_input    
  end

  post '/piglatinize' do
    @phrase = (params[:user_phrase])
    @piggy = PigLatinizer.new
    @piggy.to_pig_latin(@phrase)
     
    erb :piglatinize
  end

end

