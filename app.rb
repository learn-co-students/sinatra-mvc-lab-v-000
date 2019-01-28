require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/' do
   200
   erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new 
    @user_phrase = pl.piglatinize(params[:user_phrase])#Method.new(parameter)
    erb :results
  end

end
