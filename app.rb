require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    input = params['user_phrase']
    word = PigLatinizer.new
    @new_latin = word.piglatinize(input)
    erb :piglatinize
  end
end
