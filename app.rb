require_relative 'config/environment'
require_relative 'models/PigLatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @sentance = PigLatinizer.new(params[:user_phrase]).to_pig_latin
    erb :piglatinize
  end

  post '/piglatinize' do
    erb :piglatinize
  end
end