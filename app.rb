require_relative 'config/environment'
require_relative 'models/piglatinizer'


class App < Sinatra::Base

  get '/' do
    @user_phrase = params[:phrase]
    erb :user_input
  end

end
