require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/user_input' do
    erb :user_input
  end

  post '/piglatinize' do
    @latin = PigLatinizer.new(params[:user_phrase])

    erb :piglatinize
  end
end
