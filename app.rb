require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    #phrase_from_user = params[:user_phrase]
    lp = PigLatinizer.new
    @latinized_phrase = lp.piglatinize(params[:user_phrase])
    erb :results
  end
end
