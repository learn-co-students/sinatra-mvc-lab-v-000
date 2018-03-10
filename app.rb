require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/piglatinize' do
    @piglatin = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :piglatinize
  end

end
