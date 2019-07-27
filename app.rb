require_relative 'config/environment'
require_relative './models/PigLatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinizer' do
    @piglatin = PigLatinizer.new
    @phrase = params[:user_phrase]

    erb :piglatinizer
  end

end
