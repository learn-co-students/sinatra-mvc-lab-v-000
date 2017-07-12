require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'

class App < Sinatra::Base
   get '/' do
     erb :user_input
   end

   post '/piglatinize' do
     #user_input = params[:string]#=>nil
     binding.pry
     @piglatin = PigLatinizer.new
    erb :user_input
   end
end
