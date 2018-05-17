require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    @translated_text = PigLatinizer.new(params[:user_text])
    erb :results
  end
end
