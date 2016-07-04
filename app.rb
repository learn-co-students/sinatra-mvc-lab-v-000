require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    sentence = PigLatinizer.new
    @sentence_before_piglatinize = params[:user_phrase]
    @sentence_after_piglatinize = sentence.to_pig_latin(params[:user_phrase])
    erb :piglatinizer
  end

end
