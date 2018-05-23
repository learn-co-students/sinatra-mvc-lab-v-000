require_relative 'config/environment'


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @phrase = params[:user_phrase]
    @pigger = PigLatinizer.new

    erb :return
  end

end
