require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_index
  end

  post '/piglatinize' do
    @translated_text = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :results
  end

end
