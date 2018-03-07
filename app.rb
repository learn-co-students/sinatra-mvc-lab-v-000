require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

<<<<<<< HEAD
=======

>>>>>>> 6f43316bbbf8b236adc52029454032924a8a0f9c
  get '/' do
    erb :user_input
  end

<<<<<<< HEAD
  post '/piglatinize' do
    pig_latin = PigLatinizer.new
    @latinized_phrase = pig_latin.to_pig_latin(params[:user_phrase])
    #erb :results
=======

  post '/piglatinize' do
    pig_latin = PigLatinize.new
    @piglatin = pig_latin.to_pig_latin(params[:user_phrase])
    erb :results
>>>>>>> 6f43316bbbf8b236adc52029454032924a8a0f9c
  end


end
