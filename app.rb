require_relative 'config/environment'

class App < Sinatra::Base

  get '/user_input' do
    erb :user_input
  end

  post '/user_input' do
    @latin = PigLatinize.new(params[:user_phrase])

    erb :results
  end
end
