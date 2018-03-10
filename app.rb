require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin_phrase = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :piglatinized_phrase
  end

end