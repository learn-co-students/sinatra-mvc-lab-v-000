require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    status 200

    erb :user_input
  end

  post '/piglatinize' do
    status 200
    @results = PigLatinizer.new

    erb :results
  end
end
