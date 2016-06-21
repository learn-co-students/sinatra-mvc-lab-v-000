require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    user_input = params[:text]
    @latinized = PigLatinizer.new(user_input)
    erb :results
  end
end
