require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :index
    end

    post '/' do
        pl = PigLatinizer.new
        @piglatin = pl.piglatinize(params[:user_phrase])
        erb :results
    end
end