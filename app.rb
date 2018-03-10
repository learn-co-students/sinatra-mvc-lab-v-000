require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post '/piglatinize' do
    instance = PigLatinizer.new
    @user_phrase = instance.to_pig_latin(params[:user_phrase])
    erb :piglatinized
  end

end