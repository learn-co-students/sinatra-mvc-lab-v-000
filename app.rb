require_relative 'config/environment'

class App < Sinatra::Base 

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do
    @word = params[:word]
    redirect "/piglatinize/#{@word}"
  end
end