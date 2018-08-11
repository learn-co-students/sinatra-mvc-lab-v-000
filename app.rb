require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @pig_latin = PigLatinizer.new(params[:user_phrase]).pig_latin
        erb :pig_latin
    end
end