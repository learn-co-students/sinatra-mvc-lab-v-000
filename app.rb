require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @user_phrase = params[:user_phrase]
        @piglatinized_text = PigLatinizer.new

        erb :piglatinized_text
    end
end