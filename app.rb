require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_phrase = PigLatinizer.new
    @piglatinize = user_phrase.piglatinize(params[:user_phrase])
    erb :user_output
  end
end
