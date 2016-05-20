require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # user_phrase = params[:user_phrase]
    @piglatinized = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :piglatin
  end
end

# 2. Create a `POST` method in your controller (`app.rb`) to receive your form's `params`./
