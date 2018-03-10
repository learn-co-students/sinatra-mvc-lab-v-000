require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do 
    text = params[:user_phrase]
    @pig = PigLatinizer.new(text)
    @final = @pig.to_pig_latin(text)

    erb :piglatinize
  end


end