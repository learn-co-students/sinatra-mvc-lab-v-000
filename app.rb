require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    puts params
    @input = PigLatinizer.new(params["user_phrase"])
    erb :piglatinize
  end

  get '/piglatinize' do
    erb :piglatinize
  end

  post '/piglatinize' do
    puts params
    @input = PigLatinizer.new
    erb :piglatinize
  end
#always fails my code when i go to submit unless i change something else
end
