require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    phrase_from_user = params[:user_phrase]
    @latinized_text = PigLatinizer.new(params[:user_phrase])
    erb :results
  end
end
