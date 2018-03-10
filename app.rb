require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

 post '/piglatinize' do
  #word = PigLatinizer.new
 @phrase_from_user = params[:user_phrase]
 @piglatin = PigLatinizer.new.to_pig_latin(@phrase_from_user)
 erb :results
end
end