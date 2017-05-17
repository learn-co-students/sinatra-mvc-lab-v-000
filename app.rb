require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = PigLatinizer.new
    if params[:user_phrase].split(" ").size == 1
      phrase.piglatinize(params[:user_phrase])
    else
      phrase.to_pig_latin(params[:user_phrase])
    end
  end
  
 end
