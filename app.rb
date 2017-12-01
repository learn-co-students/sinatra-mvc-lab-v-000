require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_phrase = params[:user_phrase]
    @phrase_in_latin = Array.new
    translate = PigLatinizer.new
    @phrase_in_latin = translate.to_pig_latin(@user_phrase)
    erb :pig_latin
  end
end
