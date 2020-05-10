require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_phrase
  end

  post '/piglatinize' do
    sentence = params[:user_phrase]
    @user_phrase = PigLatinizer.new.to_piglatinize_sentence(sentence)
    erb :results
  end
end
  # post '/pig' do
  #   @analyzed_text = PigLatinizer.new.to_pig_latin(params[:word])
  #
  #   erb :pig
  # end
