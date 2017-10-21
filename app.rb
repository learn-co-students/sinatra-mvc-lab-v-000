require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/piglatinize' do
    p = PigLatinizer.new
    @user_phrase = p.to_pig_latin(params[:user_phrase])
    #@user_phrase = PigLatinizer.new(params[:user_text])
    erb :user_input
  end
end
