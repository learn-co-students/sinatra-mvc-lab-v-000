require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
  sentence= params[:user_phrase]
  pig= PigLatinizer.new
   @piglatinize=pig.to_pig_latin(sentence)
  erb :view
  end

end
