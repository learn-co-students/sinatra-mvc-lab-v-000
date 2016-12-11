require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    puts params
    #@user_text = PigLatinizer.new(params[:user_text])
    erb :results
  end

  post '/piglatinize' do
    puts params
    @user_phrase = params[:user_phrase]
    @translator = PigLatinizer.new
    erb :results
  end
end
