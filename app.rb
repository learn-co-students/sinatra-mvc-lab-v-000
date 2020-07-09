require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    to_piglatinize = PigLatinizer.new
    @piglatin = to_piglatinize.piglatinize(params[:user_phrase])

    erb :results
  end

end
