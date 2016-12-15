require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
      erb :user_input
    end

    post '/piglatinize' do
      @pig_latin = PigLatinizer.new
      @user_phrase = params[:user_phrase]
      erb :pig_latinized
    end
end
