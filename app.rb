require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    #recieve params
  #  binding.pry
    @piglatinizer_converter = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :piglatinize
  end

end
