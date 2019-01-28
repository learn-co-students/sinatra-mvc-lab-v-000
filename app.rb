require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
   200
   erb :user_input
  end

  post '/piglatinize' do
    200
    @user_input = params[:user_input]
  end

end
