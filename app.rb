require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    pg = PigLatinizer.new
    @latinizedstr = pg.piglatinize(params[:user_phrase])

    erb :piglatin
  end
  
end