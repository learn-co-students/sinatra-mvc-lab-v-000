require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @analyzed_text = PigLatinizer.new
    
    erb :results
  end 
end