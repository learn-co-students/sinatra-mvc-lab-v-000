require_relative 'config/environment'
require_relative 'models/piglatinizer'
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text = PigLatinizer.new.piglatinize(params[:user_phrase])

      erb :final
  end

end
