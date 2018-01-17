require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @converted = PigLatinizer.new
    @converted.text = params[:user_phrase]
    erb :show_input
  end
end
