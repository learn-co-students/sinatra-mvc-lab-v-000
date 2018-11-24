require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post'/piglatinize' do
    @piglatinized_phrase = PigLatinizer.new
    erb :pig_latinized
  end
end
