require_relative 'config/environment'
require_relative './models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    if params[:user_phrase].include?(' ')
      @words = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    else
      @words = PigLatinizer.new.piglatinize(params[:user_phrase])
    end
    erb :piglatinize
  end
end