require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_text = params[:user_phrase]
    piglatinizer = PigLatinizer.new

    if user_text.split.size > 1
      @result = piglatinizer.to_pig_latin(user_text)
    else
      @result = piglatinizer.piglatinize(user_text)
    end

    erb :piglatinize
  end

end
