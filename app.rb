require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    phrase = params[:user_phrase]
    piglatinizer = PigLatinizer.new
    
    if phrase.include?(" ")
      @piglatinized_phrase = piglatinizer.to_pig_latin(phrase)
    else
      @piglatinized_phrase = piglatinizer.piglatinize(phrase)
    end
    
    erb :piglatinized
  end
end