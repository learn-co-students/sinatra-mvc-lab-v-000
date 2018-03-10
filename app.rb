require_relative 'config/environment'
require_relative 'models/pigLatinizer'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.to_pig_latin(params[:user_phrase])
    erb :results
  end
end
