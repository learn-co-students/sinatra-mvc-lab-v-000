require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_phrase = params[:user_phrase]
    @latinized = PigLatinizer.new
    @phrase = @latinized.to_pig_latin(user_phrase)
    erb :results
  end
end
