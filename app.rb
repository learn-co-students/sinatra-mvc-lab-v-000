require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_input = PigLatinizer.new(params[:user_phrase]).translate

    @user_input
    # erb :output
  end

end
