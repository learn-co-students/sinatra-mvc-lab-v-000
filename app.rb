require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @english = params[:user_phrase]
    @latinized_text = pl.piglatinize(@english)
    erb :results
  end
end
