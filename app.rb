require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

#  post '/user_input' do
#    @piglatinized = PigLatinizer.new
#    @latin = params[:user_phrase]
#    erb :results
#  end

  post '/piglatinize' do
    @piglatinized = PigLatinizer.new
    @latin = params[:user_phrase]
    erb :results
  end

end
