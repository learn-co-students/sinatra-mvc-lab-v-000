require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end
  post "/piglatinize" do
    @input = params[:user_phrase]
    @words = PigLatinizer.new
    @result = @words.to_pig_latin(@input)

    erb :result
  end
end
