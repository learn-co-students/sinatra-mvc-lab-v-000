require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do

  erb :user_input
  end

  post '/piglatinize' do
    @text_to_piglatin = PigLatinizer.new

    erb :results
  end

end
