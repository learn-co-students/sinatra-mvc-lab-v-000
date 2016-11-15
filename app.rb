require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  post '/piglatinize' do
    p = PigLatinizer.new
    @original_input = params["user_phrase"]
    @pl = p.to_pig_latin(params["user_phrase"])
    erb :piglatinize
  end

  get '/' do
    erb :user_input
  end

end
