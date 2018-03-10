require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    puts params
    erb :user_input
  end
  
  post '/piglatinize' do
    @user_phrase = params[:user_phrase]
    @piglatinized = PigLatinizer.new
    erb :result
  end
  
end