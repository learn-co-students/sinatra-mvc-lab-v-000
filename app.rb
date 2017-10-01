require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_input = params[:user_phrase]
    latinizer = PigLatinizer.new
    @pig_latin = latinizer.to_pig_latin(@user_input)

    erb :display_phrase
  end
end
