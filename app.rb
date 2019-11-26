require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do 
        user_input = params["user_phrase"]
        phrase = PigLatinizer.new
        @pig_latinized_phrase = phrase.to_pig_latin(user_input)

        erb :pig_latin
    end
end

