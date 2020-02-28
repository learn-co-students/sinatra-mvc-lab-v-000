require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinizer' do
    @pig_latin = PigLatinize.to_pig_latin(params[:user_phrase])

    erb :results
  end

end
