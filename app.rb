require_relative 'config/environment'

class App < Sinatra::Base
  get('/'){
    erb :user_input
  }
  
  post('/piglatinize'){
    x = PigLatinizer.new
    @answer = x.piglatinize(params[:user_phrase])
    erb :answer
  }
  
end