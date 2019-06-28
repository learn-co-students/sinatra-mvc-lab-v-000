require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinizer' do

    a = PigLatinizer.new
    a.phrase = params[:user_phrase]
    a.piglatinize
    #binding.pry
  end

end
