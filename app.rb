require 'pry'
require_relative 'config/environment'
require_relative "models/piglatinizer.rb"

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    if params[:user_phrase].split(" ").count == 1
      @piglatinized_string = PigLatinizer.new.piglatinize(params[:user_phrase])
    else
      @piglatinized_string = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    end
    erb :results
  end
end
