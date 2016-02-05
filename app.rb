
# Build a PigLatinize model (in your models directory) that converts a string into pig latin.
# In your application controller, create an instance of the PigLatinize class to convert your user input to Pig Latin.
# Use ERB within a new view to display the final pig latin string to the user.

require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    input = params[:user_phrase]
    pig_latinizer=PigLatinizer.new
    @piglatin = pig_latinizer.to_pig_latin(input)
    
    erb :piglatin
  end

end