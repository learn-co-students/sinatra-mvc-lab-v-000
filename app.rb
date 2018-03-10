require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end 

  post '/piglatinize' do
    new_pig_class = PigLatinizer.new 
    @user_text = params[:user_phrase]
    @pig_latin_text = new_pig_class.to_pig_latin(@user_text)

    erb :piglatinize


  end 

end 