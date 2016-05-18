require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatin = PigLatinizer.new(params[:user_input])
    erb :piglatinize

  end

end

# 2. Create a `POST` method in your controller (`app.rb`) to receive your form's `params`./
