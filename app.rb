require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        @result=PigLatinizer.new.piglatinize(params["user_phrase"])
         erb :result
    end
end