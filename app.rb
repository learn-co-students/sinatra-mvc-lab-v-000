require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_input = PigLatinizer.new
    @user_input = @user_input.to_pig_latin(params["user_phrase"])
    erb :output
  end

end