require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_phrase = params[:user_phrase]
    @piglatin = PigLatinizer.new
    @pig_latin_phrase = ''

    if @user_phrase.length == 1
      @pig_latin_phrase += @piglatin.piglatinize(@user_phrase)
    elsif @user_phrase.length > 1
      @pig_latin_phrase += @piglatin.to_pig_latin(@user_phrase)
    else
      @pig_latin_phrase = "Where's the phrase? Give me something to work with kid!"
    end

    erb :piglatinize
  end
end
