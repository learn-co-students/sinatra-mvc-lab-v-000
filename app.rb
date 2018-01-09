require_relative 'config/environment'

class App < Sinatra::Base

    get '/user_input' do
        erb :user_input
    end

    
end