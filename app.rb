require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig = PigLatinizer.new(params[:user_phrase])
    @phrase = pig.to_pig_latin(pig.text)
    erb :pig
  end

end