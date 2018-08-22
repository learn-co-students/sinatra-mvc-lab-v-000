require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
  @sentence =  PigLatinizer.new.piglatinize(params["user_phrase"])
  # erb :latinized
    # binding.pry
   end
end
