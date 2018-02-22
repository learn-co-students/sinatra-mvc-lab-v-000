require_relative 'config/environment'

class App < Sinatra::Base

    get '/'do
      erb :user_input
    end

    # post '/user_input' do
    # @phrase = params[:user_phrase].to_s
    # @pig_latin_phrase = PigLatinizer.new.piglatinize(@phrase)
    # erb:piglatinize
    # end

    post '/piglatinize'do
    @phrase = params[:user_phrase].to_s
    @pig_latin_phrase = PigLatinizer.new.piglatinize(@phrase)
    erb:piglatinize
    end

end
