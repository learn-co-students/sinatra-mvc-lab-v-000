require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piggy = PigLatinizer.new
    @pig_text = params["user_phrase"]
    erb :piglatinize
  end
end
