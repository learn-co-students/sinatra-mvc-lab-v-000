require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/translation' do
    @text_input = PigLatinizer.new(params[:user_input])

    erb :translation
  end

end