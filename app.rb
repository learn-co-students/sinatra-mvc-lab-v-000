require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end 

  post '/piglatinize' do
    newapp = PigLatinizer.new
    @analyzed_text = newapp.to_pig_latin(params[:user_phrase])
    erb :results
  end
end