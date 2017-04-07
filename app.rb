require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    newpiglatin = PigLatinizer.new
    if params[:user_phrase].split(" ").size == 1
      newpiglatin.piglatinize(params[:user_phrase])
    else
      newpiglatin.to_pig_latin(params[:user_phrase])
    end
  end
end
