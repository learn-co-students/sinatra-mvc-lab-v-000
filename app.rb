require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/piglatinize' do
    erb :pig_latin
  end

  post '/piglatinize' do
    # @pig_latinize = PigLatinizer.new(params[:user_phrase])
    phrase = PigLatinizer.new
    @pig_latinize = phrase.to_pig_latin(params[:user_phrase])
    erb :pig_latin
  end



end