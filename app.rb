require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post '/piglatinize' do
    original_string = params[:user_phrase]
    @piglatinize = PigLatinizer.new.to_pig_latin(original_string)
    puts @piglatinize
    erb :piglatinize
  end
end