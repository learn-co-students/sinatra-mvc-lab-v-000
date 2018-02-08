require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @user_phrase = params[:user_phrase]
        @pig_latinizer = PigLatinizer.new

        erb :pig_latinized
    end
end