require_relative 'config/environment'

class App < Sinatra::Base
    
    get "/" do
        erb :user_input
    end
    post "/piglatinize" do
        "Your new phrase is '#{params[:user_phrase]}'"
    end

end