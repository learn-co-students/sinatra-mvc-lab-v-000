require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    "Hello World!"
    user_input = params[:user_phrase]
    words = PigLatinizer.new

    if user_input.split(" ").size == 1
      @new_word = words.piglatinize(user_input)
    else
      @new_word = words.to_pig_latin(user_input)
    end

    erb :piglatinize
  end

end
