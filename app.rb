require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
     erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @user_phrase = params[:user_phrase]
    @piglatin = pl.to_pig_latin(@user_phrase)
    erb :results
  end

end
