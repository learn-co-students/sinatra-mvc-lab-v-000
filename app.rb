require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post '/piglatinize' do
    # binding.pry
    # original_string = params[:user_phrase]
    # @piglatinized_string = original_string.piglatinize
    # binding.pry
    # @piglatinized_string = PigLatinizer.new(params[:user_phrase])
    # piglatin = PigLatinizer.user_text = params[:user_phrase]
    # binding.pry
    piglatinizer = PigLatinizer.new
    @piglatinized_text = piglatinizer.piglatinize(params[:user_phrase])
    erb :piglatinize
  end

end
