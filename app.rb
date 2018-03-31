require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text = params[:user_phrase]
    @piglatinized_text = PigLatinizer.new.piglatinize(@text)
    erb :results
  end

end
