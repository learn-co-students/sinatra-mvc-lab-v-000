require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_string = params[:user_phrase]
    new_string = PigLatinizer.new.piglatinize(user_string)
  end

end
