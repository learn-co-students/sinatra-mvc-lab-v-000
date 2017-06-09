require_relative 'config/environment'
require_relative 'models/piglatinize.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text = params[:user_phrase]
    @translated_text = PigLatinizer.new.to_pig_latin(@text)
    erb :results
  end


end
