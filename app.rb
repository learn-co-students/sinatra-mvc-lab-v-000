require_relative 'config/environment'
#require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinizer = (params[:text_here])

    #binding.pry
    erb :response

  end

  get '/response' do
    erb :response
  end
end
