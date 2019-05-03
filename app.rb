require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  post '/piglatinize' do
    text_from_user= params[:user_phrase]

    instance_of_piglatinizer= PigLatinizer.new
    @piglatinized= instance_of_piglatinizer.piglatinize(text_from_user)
    erb :newview
  end
end
