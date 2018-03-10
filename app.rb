require 'pry'
require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @latinize = PigLatinizer.new
    erb :pig_latin
  end
end
