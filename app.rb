require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_phrase
  end

  post '/piglatinize' do
# binding.pry
    @pl = PigLatinizer.new
    @user_phrase = (params[:user_phrase]).chomp(".")
    erb :piglatinize

  end

  get '/piglatinize' do

    erb :piglatinize
  end




end