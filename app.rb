require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_input = params[:user_phrase]
    @piglatinizer = PigLatinizer.new
    result = @piglatinizer.piglatinize(user_input)
    "#{result}"
  end

end
