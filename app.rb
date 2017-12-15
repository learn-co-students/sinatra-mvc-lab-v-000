require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    @output = PigLatinizer.new.piglatinize(params[:user_phrase])

    erb :results
  end
end
