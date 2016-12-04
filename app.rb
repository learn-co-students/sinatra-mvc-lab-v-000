require_relative 'config/environment'


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig = params[:user_phrase]
    @pig
  end



end