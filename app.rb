require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb:user_input
  end

  post '/piglatinize' do
    @piglatin = PigLatinizer.new
    @phrase = params[:user_phrase]
    erb:pigged
end


end
