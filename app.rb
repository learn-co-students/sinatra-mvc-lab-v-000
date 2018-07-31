require_relative 'config/environment'
require_relative 'models/piglatinizer'
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text = params[:user_phrase]
    pl = PigLatinizer.new
    @piglatinizer = pl.piglatinize(text)
    erb :pig_latinizer
  end

end
