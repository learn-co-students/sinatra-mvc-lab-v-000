require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    analyzed_user_input = PigLatinizer.new
    @user_phrase = analyzed_user_input.to_pig_latin(params[:user_phrase])

    erb :result
  end
end
