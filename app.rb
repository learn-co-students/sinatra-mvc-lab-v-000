require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        @piglatinizer = PigLatinizer.new
        @text_to_convert = params[:user_phrase]
        erb :piglatinized_text
    end
end