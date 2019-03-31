require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @new_object = PigLatinizer.new
    @new_object.text = params[:user_phrase]
    #binding.pry
    erb :results
  end
end
