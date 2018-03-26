require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :index
  end


   post '/piglatinize' do
     text_from_user = params[:user_phrase]
     @pig_latin = PigLatinizer.new.piglatinize(text_from_user)
     erb :view_piglatin
   end

end
