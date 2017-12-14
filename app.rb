require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  gets '/' do
    erb :user_input
  end

  post '/' do
    @word = Piglatinizer.new(params[:text])

    erb :results
  end
end
