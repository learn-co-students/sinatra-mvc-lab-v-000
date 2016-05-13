require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    processor = PigLatinizer.new
    @piglatinized_phrase = processor.to_pig_latin(params["user_phrase"])
    erb :input_results
  end
end