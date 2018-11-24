require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post '/piglatinize' do
    # binding.pry
    # original_string = params[:user_phrase]
    # @piglatinized_string = original_string.piglatinize
    @piglatinized_text = PigLatinizer.new(params[:user_phrase])
    erb :piglatinize
  end

end
