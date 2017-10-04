require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    new_phrase = PigLatinizer.new
    @piglatinize = new_phrase.to_pig_latin(params[:user_phrase])

    erb :results
  end

end
