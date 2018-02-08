require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    get '/' do
        user_phrase = params[:user_phrase]
        @pig_latinized = PigLatinizer.new(user_phrase)

        erb :user_input
    end
end