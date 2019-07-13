require_relative 'config/environment'
# require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_phrase
  end

  post '/piglatinize' do
    @piglatin = PigLatinizer.new
    @sentence = @piglatin.piglatinize(params[:user_phrase])

    erb :pig_latin_phrase
  end
end
