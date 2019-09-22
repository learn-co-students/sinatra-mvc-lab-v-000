require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do 
        #binding.pry
        @piglatinized = PigLatinizer.new.to_pig_latin(params[:user_phrase])
        erb :piglatinize
    end

end