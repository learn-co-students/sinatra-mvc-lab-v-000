require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

   get '/' do
      erb :user_input
   end

   post '/piglatinize' do
     piglatinizer = PigLatinizer.new
     piglatinizer.to_pig_latin(params[:user_phrase])
   end

   post '/piglatinize' do
     piglatinizer = PigLatinizer.new
     piglatinizer.to_pig_latin(params[:user_phrase])
   end
end
