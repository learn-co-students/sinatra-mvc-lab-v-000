require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base
  

  get '/' do
    erb :user_input
  end

  post '/' do 
    @user_phrase = PigLatinizer.new(params[:user_text]).twister
    erb :pig_text
  end



end