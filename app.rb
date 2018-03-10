require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatin = PigLatinizer.new
    @piglatinize = piglatin.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end
end
