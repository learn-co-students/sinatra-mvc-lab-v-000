require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    @user_phrase = params[:user_phrase]
    @words = PigLatinizer.new(@user_phrase)

    erb :results
  end
end
