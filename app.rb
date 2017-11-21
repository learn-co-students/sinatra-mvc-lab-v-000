require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinizer = PigLatinizer.new
    @output = piglatinizer.to_pig_latin(params[:user_phrase])

    erb :piglatinized
  end
end
