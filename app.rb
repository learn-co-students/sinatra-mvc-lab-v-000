require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    phrase = "#{params[:user_phrase]}"
    users_phrase = PigLatinizer.new
    users_phrase.phrase = phrase

    @piglatin = users_phrase.piglatinize(users_phrase.phrase)
    "#{@piglatin}"
  end

  post '/piglatinize' do
    phrase = "#{params[:user_phrase]}"
    users_phrase = PigLatinizer.new
    users_phrase.phrase = phrase

    @piglatin = users_phrase.piglatinize(users_phrase.phrase)
    "#{@piglatin}"
  end
end
