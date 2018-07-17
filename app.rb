require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    post '/piglatinize' do
        @user_phrase = PigLatinizer.new

        erb :piglatinize
    end
end