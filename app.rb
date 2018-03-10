require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do
    @latinized_text = PigLatinizer.new.to_pig_latin(params[:user_phrase]).to_s
    erb :results
  end
end