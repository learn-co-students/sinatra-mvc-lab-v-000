# require_relative 'config/environment'
#
# class App < Sinatra::Base
#   get '/' do
#     erb :user_input
#   end
#
#
#   post '/piglatinize' do
#     pl = PigLatinizer.new
#     @piglatin = pl.to_pig_latin(params[:user_phrase])
#     erb :results
#   end
# end

require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    new_phrase = PigLatinizer.new
    @piglatin = new_phrase.to_pig_latin(params[:user_phrase])
    erb :results
  end

end
