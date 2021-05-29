require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/' do
      # @words = PigLatinizer.new(params[:user_text])
      @words = PigLatinizer.new
      erb :results
    end
end