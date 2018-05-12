# require_relative 'config/environment'
# require_relative 'models/piglatinizer.rb'
#
# class App < Sinatra::Base
#
#   get '/' do
#     erb :user_input
#   end
#
#   post '/piglatinize' do
#     @piglatin = PigLatinizer.new(params[:user_phrase])
#     erb :piglatinize
#   end
#
# end



require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results
  end

end
