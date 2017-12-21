require_relative 'config/environment'
require_relative 'models/piglatinizer'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    piglatined = PigLatinizer.new
    @piglatinize = piglatined.to_pig_latin(params[:user_input])

    erb :Piglatinizer

  end
end
