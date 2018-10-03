require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    
    #binding.pry
    @latinized_phrase = PigLatinizer.new(params[:user_phrase])
    erb :results
  end
end
