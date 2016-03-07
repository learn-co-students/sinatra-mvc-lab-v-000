require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do 
    pig_latinizer = PigLatinizer.new
    @pig_latinized_text = pig_latinizer.to_pig_latin(params["user_phrase"])
    erb :results
  end
end