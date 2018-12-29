require_relative 'config/environment'

class App < Sinatra::Base
  
    post '/' do
    @piglatinizer = piglatinizer.new(params[:user_text])
    erb :results
  end
end