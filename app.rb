require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @output = PigLatinize.new.piglatinizer(params[:user_input])
    erb :output
  end
end
