require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text_from_user = params[:user_phrase]
    piglatinizer_instance = PigLatinizer.new
    @piglatinize_word = piglatinizer_instance.piglatinize(@text_from_user)
    @piglatinize_words = piglatinizer_instance.to_pig_latin(@text_from_user)
    erb :piglatinize
  end
end
