require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    @string = params[:string]
    erb :user_input
  end

  post '/' do
    erb :piglatinize
  end
end
