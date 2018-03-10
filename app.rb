require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "<form>Pig Latinizer! Enter your phrase: user_phrase</form>"
  end

  post '/piglatinize' do
    @text = params[:user_phrase]
    @analyzed_text = PigLatinizer.new
    erb :text
  end 

end



