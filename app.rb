require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    "#{params[:user_phrase]}"
    erb :user_input
  end

  get '/piglatinize' do
     erb :results
  end

end
