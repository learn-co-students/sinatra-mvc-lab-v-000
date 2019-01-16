require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig = PigLatinizer.new
    pig.text = params[:user_phrase]
    @pigtext = pig.piglatinize(pig.text)

    erb :piglatinized

  end

end
