require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    piglatin_word = PigLatinizer.new
    @piglatin = piglatin_word.piglatinize(params[:user_phrase])
    erb :results
  end


end