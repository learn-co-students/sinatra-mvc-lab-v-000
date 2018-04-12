require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @string = (params[:user_phrase])
    @piglatin = PigLatinizer.new
    erb :pig_latin
  end
end