require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        # binding.pry
        # if params[user_phrase].scan(/[[:alpha:]]+/).count > 1
        #     @result=PigLatinizer.new.to_pig_latin(params[user_phrase])
        # else
        @result=PigLatinizer.new.piglatinize(params[user_phrase])
        # end
        #erb :result

        "#{@result}"
    end
end