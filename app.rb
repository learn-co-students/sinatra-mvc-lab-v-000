require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    sentence = PigLatinizer.new
    @pig_latin = sentence.to_pig_latin(params[:user_phrase])
    erb :result
  end

end