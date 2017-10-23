require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @latinized_phrase = PigLatinizer.new(params[:user_phrase])

    erb :pig_phrase
  end
end
