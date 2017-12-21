require 'pry'
require_relative 'config/environment'
require_relative 'models/piglatinizer'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatined = PigLatinizer.new
    # binding.pry
    @piglatinize = piglatined.to_pig_latin(params[:user_phrase])

    erb :piglatinizer

  end
end
