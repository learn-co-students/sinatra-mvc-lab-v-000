require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    new_instance = PigLatinizer.new
    @piglatinized = new_instance.piglatinize(params[:user_phrase])

    erb :piglatinize
  end

end
