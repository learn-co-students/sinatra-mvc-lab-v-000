require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
    erb :user_input
    end

    post '/piglatinize' do
      pig = PigLatinizer.new
      @piglatin = pig.translate(params[:user_input])
      erb :results
    end
end
