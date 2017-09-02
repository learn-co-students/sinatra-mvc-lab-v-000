require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  post '/piglatinizer' do
    puts :user_phrase
  end

  # post '/piglatinize' do
  #   pigged = PigLatinizer.new
  #   @piglatin = pigged.to_pig_latin(params[:user_phrase])

  #   erb :results
  # end

end

 