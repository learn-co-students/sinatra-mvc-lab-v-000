require_relative 'config/environment'
require "pry"
class App < Sinatra::Base
  
    get '/' do
      erb :user_input
    end
   
    post '/piglatinize' do
      
      p = PigLatinizer.new
      @piglatinizer = p.to_pig_latin(params[:user_phrase])
     
      # @piglatinizer = params[:user_phrase]
      erb :results
    end
end