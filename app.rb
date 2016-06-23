require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_a_fier = PigLatinizer.new

    @pig_words = pig_a_fier.to_pig_latin(params[:user_phrase])
    
    erb :results
  end


end

# post '/piglatinize' do
#     pl = PigLatinizer.new
#     @piglatin = pl.to_pig_latin(params[:user_phrase])
#     erb :results
#   end