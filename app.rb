require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do  
    @piglatinizer = PigLatinizer.new
    @text = @piglatinizer.words_check(params[:user_phrase])
    erb :piglatinize
  end

  get '/piglatinize' do 
    erb :piglatinize
  end

end