require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @user_input = params[:user_phrase]
    @piglatin = pl.to_pig_latin(@user_input)
    erb :results
  end

end