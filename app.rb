require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @the_text = Piglatinizer.new(params[:user_text])
    erb :piglatinized
  end

end