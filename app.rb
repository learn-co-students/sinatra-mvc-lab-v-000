require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/piglatinize' do

  end

  post '/piglatinize' do
    @users_phrase = PigLatinizer.new
    erb :piglatinize
  end
end
