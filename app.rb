require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do
    erb :'user-input'
  end
  
  post '/piglatinize' do
    words = PigLatinizer.new
    @pig_latin = words.to_pig_latin(params["user_phrase"])

    erb :'pig-latin'
  end
  
end