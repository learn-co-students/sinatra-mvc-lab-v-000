require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'
class App < Sinatra::Base
    
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @pig_latinized_text = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :pig_latinized_text
  end
end