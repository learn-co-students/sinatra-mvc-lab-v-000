require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do
    @output = PigLatinizer.new.to_pig_latin(params[:user_phrase].to_s)
    erb :piglatinize
  end
end