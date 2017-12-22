require_relative 'config/environment'

class App < Sinatra::Base
  post '/piglatinize' do
    pig_it = PigLatinizer.new
    @results = pig_it.piglatinize(params[:user_phrase])
    erb :results
  end

  get '/' do
    erb :user_input
  end

end