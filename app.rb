require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/translation' do
    @pig_latin = PigLatinizer.new(params[:english])

    erb :translation
  end

end