require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do 
    @input = params[:user_phrase]
    phrase = PigLatinizer.new()
    @input = phrase.to_pig_latin(@input)
    erb :piglatinize
  end
end