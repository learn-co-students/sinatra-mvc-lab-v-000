require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_phrase = PigLatinizer.new
    @pig_latin = @user_phrase.to_pig_latin(params[:user_phrase])
    # binding.pry
    erb :piglatinize
  end

end
