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
     user_input = params[:user_phrase]#=>nil
     binding.pry
     piggy = PigLatinizer.new
     @piggy = piggy.to_pig_latin(user_input)
     erb :pig_latin
   end
end
