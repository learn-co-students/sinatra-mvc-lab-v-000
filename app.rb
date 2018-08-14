require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pl_text = PigLatinizer.new
    @user_phrase = params[:user_phrase]
    erb :piglatinize
  end
end