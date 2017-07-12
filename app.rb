require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'

class App < Sinatra::Base
   get '/' do
     erb :user_input
   end

   post '/' do
     user_input = params[:string]
     @piglatin = PigLatinizer.new(user_input)
     erb :pig_latin
   end

end
