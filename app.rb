require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    a = PigLatinizer.new
    @converted_text = a.to_pig_latin(params[:user_phrase].chomp)
    erb :results
  end
end