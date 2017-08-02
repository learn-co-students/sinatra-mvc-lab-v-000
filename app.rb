require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    pig_latin = PigLatinizer.new
    @piglatin_text = pig_latin.piglatinize(params[:user_phrase])
    erb :output
  end
end
