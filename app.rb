require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/translation' do
    @english = PigLatinizer.new(params[:user_phrase])

    erb :translation
  end

end