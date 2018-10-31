require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinizer' do
    @new_string = PigLatinizer.new(params[:user_phrase]).piglatinize
    erb :result
  end
end
