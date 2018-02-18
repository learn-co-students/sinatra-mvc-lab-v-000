require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @inputted_text = PigLatinizer.new
    @result = @inputted_text.piglatinize(params[:user_phrase])
    erb :results
  end
end
