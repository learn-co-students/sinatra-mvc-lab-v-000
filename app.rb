require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  pl = PigLatinizer.new

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text_from_user = params[:user_phrase]
    @user_phrase = pl.to_pig_latin(text_from_user)
    erb :results 
  end
end
