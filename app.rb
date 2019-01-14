require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    phrase_from_user = params[:user_phrase]
    #binding.pry
    @latinized_phrase = PigLatinizer.new.piglatinize(phrase_from_user)
    erb :results
  end
end
