require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/results' do
    erb :results
  end

  post '/piglatinize' do
    @text = PigLatinizer.new
    erb :results
  end
end
