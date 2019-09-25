require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatinized = pl.to_pig_latin(params[:user_phrase])
    erb :results
  end

end
