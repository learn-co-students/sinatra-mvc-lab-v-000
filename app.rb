require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text_latin = PigLatinizer.new
    @piglatin_text = text_latin.to_pig_latin(params[:user_phrase])
    erb :output
  end

end
