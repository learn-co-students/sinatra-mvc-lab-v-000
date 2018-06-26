require_relative 'config/environment'
require 'models/piglatinizer_spec.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = PigLatinizer.new
    @in_pig_latin = phrase.piglatinize(params[:user_phrase])
    erb :results
  end

end
