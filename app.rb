require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text_to_piglatin = PigLatinizer.new.piglatinize(params[:user_phrase])
    @text_to_piglatin
  end

end
