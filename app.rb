require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    words = PigLatinizer.new
    new_phrase = words.to_pig_latin(params[:user_phrase])
    "#{new_phrase}"
    # "#{PigLatinizer.to_pig_latin(params[:user_phrase])}"
    # erb :results
  end
end
