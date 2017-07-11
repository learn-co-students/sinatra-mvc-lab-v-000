require_relative 'config/environment'
require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'

class App < Sinatra::Base
   get '/' do
     erb :user_input
   end

   post '/piglatinize' do
     params[:string]
   end


end
