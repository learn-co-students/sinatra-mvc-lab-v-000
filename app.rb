require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # params[:user_phrase]
    piglatin = PigLatinizer.new
    # @text = piglatin.word(params[:user_phrase])
    @pig_text = piglatin.to_pig_latin(params[:user_phrase])
    # binding.pry
    # # params[:user_phrase]
    erb :pig_latinized
  end
end
