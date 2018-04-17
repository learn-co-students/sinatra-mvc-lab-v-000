require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    puts params
    pig = PigLatinizer.new
    @phrase = pig.piglatinize(params[:user_phrase])
    
    erb :hrasepay
  end
end
