require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    words = params["user_phrase"]
    platinizer = PigLatinizer.new
    @platinized = platinizer.piglatinize(words)
    erb :piglatinized
  end

end
