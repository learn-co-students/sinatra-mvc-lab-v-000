require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    input = PigLatinizer.new
    @translated_text = input.piglatinize(params[:user_phrase])

    erb :translated_input


  end
end
