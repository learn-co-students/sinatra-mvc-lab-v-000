require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    words = PigLatinizer.new
    input = params[:user_phrase]
    @words = words.to_pig_latin(input)
    erb :user_input
  end
end
