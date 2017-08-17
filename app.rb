require_relative 'config/environment'

class App < Sinatra::Base

   get '/' do
     erb :user_input
   end


   post '/piglatinize' do
     new_pl = PigLatinizer.new

     @output = new_pl.piglatinize(params[:user_phrase])
     erb :piglatinize
   end








end
